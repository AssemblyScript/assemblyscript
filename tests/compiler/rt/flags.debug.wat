(module
 (type $0 (func (param i32)))
 (type $1 (func (param i32) (result i32)))
 (type $2 (func))
 (type $3 (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/shared/runtime/Runtime.Stub i32 (i32.const 0))
 (global $~lib/shared/runtime/Runtime.Minimal i32 (i32.const 1))
 (global $~lib/shared/runtime/Runtime.Incremental i32 (i32.const 2))
 (global $~lib/native/ASC_FEATURE_SIMD i32 (i32.const 0))
 (global $~lib/util/xjb/xjb/HAS_SIMD i32 (i32.const 0))
 (global $~lib/util/xjb/xjb/gPow10Hi (mut i64) (i64.const 0))
 (global $~lib/util/xjb/xjb/gPow10Lo (mut i64) (i64.const 0))
 (global $~lib/native/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/util/xjb/xjb/TABLE_COMPRESSED i32 (i32.const 0))
 (global $~lib/util/xjb/xjb/DIV10K_EXP i32 (i32.const 40))
 (global $~lib/util/xjb/xjb/DIV10K_SIG i64 (i64.const 109951163))
 (global $~lib/util/xjb/xjb/NEG10K i64 (i64.const 4294957296))
 (global $~lib/util/xjb/xjb/DIV100_EXP i32 (i32.const 19))
 (global $~lib/util/xjb/xjb/DIV100_SIG i64 (i64.const 5243))
 (global $~lib/util/xjb/xjb/NEG100 i64 (i64.const 65436))
 (global $~lib/util/xjb/xjb/DIV10_EXP i32 (i32.const 10))
 (global $~lib/util/xjb/xjb/DIV10_SIG i64 (i64.const 103))
 (global $~lib/util/xjb/xjb/NEG10 i64 (i64.const 246))
 (global $~lib/util/xjb/xjb/ZEROS i64 (i64.const 3472328296227680304))
 (global $~lib/util/xjb/xjb/POW10_SMALL i32 (i32.const 8))
 (global $~lib/util/xjb/xjb/DIGIT_PAIRS i32 (i32.const 136))
 (global $~lib/util/xjb/xjb/gBcd (mut i64) (i64.const 0))
 (global $~lib/util/xjb/xjb/gBcdLen (mut i32) (i32.const 0))
 (global $~lib/util/xjb/xjb/gDigHi (mut i64) (i64.const 0))
 (global $~lib/util/xjb/xjb/gDigLo (mut i64) (i64.const 0))
 (global $~lib/util/xjb/xjb/gDigNum (mut i32) (i32.const 0))
 (global $~lib/util/xjb/xjb/gSig (mut i64) (i64.const 0))
 (global $~lib/util/xjb/xjb/gExp (mut i32) (i32.const 0))
 (global $~lib/util/xjb/xjb/gLastDigit (mut i32) (i32.const 0))
 (global $~lib/util/xjb/xjb/gHasLastDigit (mut i32) (i32.const 0))
 (global $~lib/util/xjb/xjb/DOUBLE_EXP_OFFSET i32 (i32.const 1075))
 (global $~lib/util/xjb/xjb/EXTRA_SHIFT i32 (i32.const 6))
 (global $~lib/util/xjb/xjb/BIASED_HALF i64 (i64.const -9223372036854775802))
 (global $~lib/util/xjb/xjb/DOUBLE_MAX_DIGITS10 i32 (i32.const 17))
 (global $~lib/util/xjb/xjb/MIN_FIXED_DEC_EXP i32 (i32.const -6))
 (global $~lib/util/xjb/xjb/MAX_FIXED_DEC_EXP i32 (i32.const 20))
 (global $~lib/util/xjb/xjb/SCRATCH i32 (i32.const 336))
 (global $~lib/util/xjb/ftoa/HAS_SIMD i32 (i32.const 0))
 (global $~lib/util/xjb/ftoa/POW10_FLOAT_HI i32 (i32.const 464))
 (global $~lib/util/xjb/ftoa/H37 i32 (i32.const 1080))
 (global $~lib/util/xjb/ftoa/DIV10K_EXP i32 (i32.const 40))
 (global $~lib/util/xjb/ftoa/DIV10K_SIG i64 (i64.const 109951163))
 (global $~lib/util/xjb/ftoa/NEG10K i64 (i64.const 4294957296))
 (global $~lib/util/xjb/ftoa/DIV100_EXP i32 (i32.const 19))
 (global $~lib/util/xjb/ftoa/DIV100_SIG i64 (i64.const 5243))
 (global $~lib/util/xjb/ftoa/NEG100 i64 (i64.const 65436))
 (global $~lib/util/xjb/ftoa/DIV10_EXP i32 (i32.const 10))
 (global $~lib/util/xjb/ftoa/DIV10_SIG i64 (i64.const 103))
 (global $~lib/util/xjb/ftoa/NEG10 i64 (i64.const 246))
 (global $~lib/util/xjb/ftoa/ZEROS i64 (i64.const 3472328296227680304))
 (global $~lib/util/xjb/ftoa/DIGIT_PAIRS i32 (i32.const 1336))
 (global $~lib/util/xjb/ftoa/gBcd (mut i64) (i64.const 0))
 (global $~lib/util/xjb/ftoa/gBcdLen (mut i32) (i32.const 0))
 (global $~lib/util/xjb/ftoa/gDigHi (mut i64) (i64.const 0))
 (global $~lib/util/xjb/ftoa/gDigNum (mut i32) (i32.const 0))
 (global $~lib/util/xjb/ftoa/gSig (mut i64) (i64.const 0))
 (global $~lib/util/xjb/ftoa/gExp (mut i32) (i32.const 0))
 (global $~lib/util/xjb/ftoa/gLastDigit (mut i32) (i32.const 0))
 (global $~lib/util/xjb/ftoa/gHasLastDigit (mut i32) (i32.const 0))
 (global $~lib/util/xjb/ftoa/FLOAT_EXP_OFFSET i32 (i32.const 150))
 (global $~lib/util/xjb/ftoa/FLOAT_BIT i32 (i32.const 36))
 (global $~lib/util/xjb/ftoa/FLOAT_ONE_BIAS i64 (i64.const 17179869177))
 (global $~lib/util/xjb/ftoa/MIN_FIXED_DEC_EXP i32 (i32.const -6))
 (global $~lib/util/xjb/ftoa/MAX_FIXED_DEC_EXP i32 (i32.const 20))
 (global $~lib/util/xjb/ftoa/FLOAT_MAX_DIGITS10 i32 (i32.const 9))
 (global $~lib/util/xjb/ftoa/SCRATCH i32 (i32.const 1536))
 (global $rt/flags/VALUE_ALIGN_REF i32 (i32.const 256))
 (global $rt/flags/KEY_ALIGN_REF i32 (i32.const 131072))
 (global $~lib/rt/__rtti_base i32 (i32.const 1840))
 (global $~lib/memory/__data_end i32 (i32.const 2056))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 34824))
 (global $~lib/memory/__heap_base i32 (i32.const 34824))
 (memory $0 1)
 (data $0 (i32.const 8) "\01\00\00\00\00\00\00\00\n\00\00\00\00\00\00\00d\00\00\00\00\00\00\00\e8\03\00\00\00\00\00\00\10\'\00\00\00\00\00\00\a0\86\01\00\00\00\00\00@B\0f\00\00\00\00\00\80\96\98\00\00\00\00\00\00\e1\f5\05\00\00\00\00\00\ca\9a;\00\00\00\00\00\e4\0bT\02\00\00\00\00\e8vH\17\00\00\00\00\10\a5\d4\e8\00\00\00\00\a0rN\18\t\00\00\00@z\10\f3Z\00\00\00\80\c6\a4~\8d\03\00")
 (data $1 (i32.const 136) "00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899")
 (data $2 (i32.const 336) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $3 (i32.const 464) "p\\\ea{\ce2~\8f\1a\c7C\c6\b0\b7\96\e5\ae\05\03\05\'\c6\ab\b7\bf7\cf\d0\b8\d1\ef\92\fe%\e5\1a\8eO\19\eb2\ebP\e2\a4?\14\bc\f5\88\r\b5P\99v\96!\dbH\bb\1a\c2\bd\f0\b4\15\07\c9{\ce\97\c0]\11l:\96\0b\13\9a\c7\1b\e0\c3V\df\84\f6\06\e3L6\12\197\c5\9e\b5p+\a8\ad\c5\9d\97\"\81E@|o\fc\dfNg\04\cd\c9\f2\c9\e6\0b\b96\d7\07\8f\a1\85\t\94\f8x9?\81:\0f \f4\'\8f\cb\ce\c8\a5\19\90\b9\a5o\a5\a0\84\14@aQY\84\00\a1\ed\cc\ce\1b\c2\d3\00\b4W\n?\16h\a9\00\90\acn2x\86\87\00\80z\17\b7&\d7\d8\00\00b\ac\c5\ebx\ad\00\00\e8\89\04#\c7\8a\00\00@v:k\0b\de\00\00\00\c5.\bc\a2\b1\00\00\00\04\bf\c9\1b\8e\00\00\00\a01\a9_\e3\00\00\00\80\f4 \e6\b5\00\00\00\00*\e7\84\91\00\00\00\00\10\a5\d4\e8\00\00\00\00@\b7C\ba\00\00\00\00\00\f9\02\95\00\00\00\00\00(k\ee\00\00\00\00\00 \bc\be\00\00\00\00\00\80\96\98\00\00\00\00\00\00$\f4\00\00\00\00\00\00P\c3\00\00\00\00\00\00@\9c\00\00\00\00\00\00\00\fa\00\00\00\00\00\00\00\c8\00\00\00\00\00\00\00\a0\00\00\00\00\00\00\00\80\cd\cc\cc\cc\cc\cc\cc\cc\0b\d7\a3p=\n\d7\a3<\dfO\8d\97n\12\83,e\19\e2X\17\b7\d1$\84G\1bG\ac\c5\a7\b6il\af\05\bd7\86\bdBz\e5\d5\94\bf\d6\fd\cea\84\11w\cc\ab\98\a5\b46A_p\89\bf\d5\ed\bd\ce\fe\e6\db\ff\aa$\cb\0b\ff\eb\af\cc\88Po\t\cc\bc\8c\14\0e\b4KB\13.\e1\10\d8\\\t5\dc$\b4\da\ac\b0:\f7|\1d\90\\\e1M\c4\be\94\95\e6J\b4\a462\aaw\b8\08]\1d\92\8e\ee\92\93\a6a\95\b6}J\1e\ec\eb\1a\11\92d\08\e5\bc\ef{\datP\a0\1d\97\b2,\f7\ba\80\00\c9\f1(\8a\92\95\00\9am\c1S;uD\cd\14\be\9aR\c5\ee\d3\ae\87\96\f7\db\9dXv%\06\12\c6I~\e0\91\b7\d1t\9e\0e\ca\00\83\f2\b5\87\fd?;\9a5\f5\f7\d2\ca2\fc\14^\f7_B\a2\f5\fcCK,\b3\ce\81\bb\949E\ad\1e\b1\cf")
 (data $4 (i32.const 1080) "\"\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$\"#$!\"#")
 (data $5 (i32.const 1336) "00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899")
 (data $6 (i32.const 1536) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $7 (i32.const 1676) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00\00\00\00\00\00\00\00\00")
 (data $8 (i32.const 1740) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (data $9 (i32.const 1788) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\16\00\00\00r\00t\00/\00f\00l\00a\00g\00s\00.\00t\00s\00\00\00\00\00\00\00")
 (data $10 (i32.const 1840) "5\00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00A\08\00\00A\00\00\00A\00\00\00\81\08\00\00\81\00\00\00\01\t\00\00\01\01\00\00\01\n\00\00\01\02\00\00\01\19\00\00\01\1a\00\00B\08\00\00B\00\00\00\82\08\00\00\82\00\00\00\02\t\00\00\02\01\00\00\02\n\00\00\02\02\00\00\02\19\00\00\02\1a\00\00\02\04\00\00 \00\00\00\02A\00\00\02a\00\00H\08\00\00H\00\00\00\88\08\00\00\88\00\00\00\08\t\00\00\08\01\00\00\08\n\00\00\08\02\00\00\08\19\00\00\08\1a\00\00\08\04\00\00\08A\00\00\08a\00\00P\08\08\00\90\08\14\00\10\t\12\00\10\n\11\00\10\84\10\00P\08\82\00P\08\c2\00\10\c1\10\00\10\e1\10\00\10a\c2\00\10\t2\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "memory" (memory $0))
 (start $~start)
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
   i32.const 1696
   i32.const 1760
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
 (func $rt/flags/test<~lib/typedarray/Int8Array> (param $flags i32)
  i32.const 4
  call $~lib/rt/__typeinfo
  local.get $flags
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1808
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/typedarray/Uint8Array> (param $flags i32)
  i32.const 5
  call $~lib/rt/__typeinfo
  local.get $flags
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1808
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/typedarray/Uint8ClampedArray> (param $flags i32)
  i32.const 6
  call $~lib/rt/__typeinfo
  local.get $flags
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1808
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/typedarray/Int16Array> (param $flags i32)
  i32.const 7
  call $~lib/rt/__typeinfo
  local.get $flags
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1808
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/typedarray/Uint16Array> (param $flags i32)
  i32.const 8
  call $~lib/rt/__typeinfo
  local.get $flags
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1808
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/typedarray/Int32Array> (param $flags i32)
  i32.const 9
  call $~lib/rt/__typeinfo
  local.get $flags
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1808
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/typedarray/Uint32Array> (param $flags i32)
  i32.const 10
  call $~lib/rt/__typeinfo
  local.get $flags
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1808
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/typedarray/Int64Array> (param $flags i32)
  i32.const 11
  call $~lib/rt/__typeinfo
  local.get $flags
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1808
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/typedarray/Uint64Array> (param $flags i32)
  i32.const 12
  call $~lib/rt/__typeinfo
  local.get $flags
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1808
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/typedarray/Float32Array> (param $flags i32)
  i32.const 13
  call $~lib/rt/__typeinfo
  local.get $flags
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1808
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/typedarray/Float64Array> (param $flags i32)
  i32.const 14
  call $~lib/rt/__typeinfo
  local.get $flags
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1808
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/array/Array<i8>> (param $flags i32)
  i32.const 15
  call $~lib/rt/__typeinfo
  local.get $flags
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1808
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/array/Array<u8>> (param $flags i32)
  i32.const 16
  call $~lib/rt/__typeinfo
  local.get $flags
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1808
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/array/Array<i16>> (param $flags i32)
  i32.const 17
  call $~lib/rt/__typeinfo
  local.get $flags
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1808
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/array/Array<u16>> (param $flags i32)
  i32.const 18
  call $~lib/rt/__typeinfo
  local.get $flags
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1808
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/array/Array<i32>> (param $flags i32)
  i32.const 19
  call $~lib/rt/__typeinfo
  local.get $flags
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1808
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/array/Array<u32>> (param $flags i32)
  i32.const 20
  call $~lib/rt/__typeinfo
  local.get $flags
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1808
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/array/Array<i64>> (param $flags i32)
  i32.const 21
  call $~lib/rt/__typeinfo
  local.get $flags
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1808
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/array/Array<u64>> (param $flags i32)
  i32.const 22
  call $~lib/rt/__typeinfo
  local.get $flags
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1808
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/array/Array<f32>> (param $flags i32)
  i32.const 23
  call $~lib/rt/__typeinfo
  local.get $flags
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1808
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/array/Array<f64>> (param $flags i32)
  i32.const 24
  call $~lib/rt/__typeinfo
  local.get $flags
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1808
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/array/Array<v128>> (param $flags i32)
  i32.const 25
  call $~lib/rt/__typeinfo
  local.get $flags
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1808
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/array/Array<rt/flags/Ref>> (param $flags i32)
  i32.const 27
  call $~lib/rt/__typeinfo
  local.get $flags
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1808
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/array/Array<rt/flags/Ref|null>> (param $flags i32)
  i32.const 28
  call $~lib/rt/__typeinfo
  local.get $flags
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1808
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/set/Set<i8>> (param $flags i32)
  i32.const 29
  call $~lib/rt/__typeinfo
  local.get $flags
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1808
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/set/Set<u8>> (param $flags i32)
  i32.const 30
  call $~lib/rt/__typeinfo
  local.get $flags
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1808
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/set/Set<i16>> (param $flags i32)
  i32.const 31
  call $~lib/rt/__typeinfo
  local.get $flags
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1808
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/set/Set<u16>> (param $flags i32)
  i32.const 32
  call $~lib/rt/__typeinfo
  local.get $flags
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1808
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/set/Set<i32>> (param $flags i32)
  i32.const 33
  call $~lib/rt/__typeinfo
  local.get $flags
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1808
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/set/Set<u32>> (param $flags i32)
  i32.const 34
  call $~lib/rt/__typeinfo
  local.get $flags
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1808
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/set/Set<i64>> (param $flags i32)
  i32.const 35
  call $~lib/rt/__typeinfo
  local.get $flags
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1808
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/set/Set<u64>> (param $flags i32)
  i32.const 36
  call $~lib/rt/__typeinfo
  local.get $flags
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1808
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/set/Set<f32>> (param $flags i32)
  i32.const 37
  call $~lib/rt/__typeinfo
  local.get $flags
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1808
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/set/Set<f64>> (param $flags i32)
  i32.const 38
  call $~lib/rt/__typeinfo
  local.get $flags
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1808
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/set/Set<v128>> (param $flags i32)
  i32.const 39
  call $~lib/rt/__typeinfo
  local.get $flags
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1808
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/set/Set<rt/flags/Ref>> (param $flags i32)
  i32.const 40
  call $~lib/rt/__typeinfo
  local.get $flags
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1808
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/set/Set<rt/flags/Ref|null>> (param $flags i32)
  i32.const 41
  call $~lib/rt/__typeinfo
  local.get $flags
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1808
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $"rt/flags/test<~lib/map/Map<v128,i8>>" (param $flags i32)
  i32.const 42
  call $~lib/rt/__typeinfo
  local.get $flags
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1808
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $"rt/flags/test<~lib/map/Map<i64,i16>>" (param $flags i32)
  i32.const 43
  call $~lib/rt/__typeinfo
  local.get $flags
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1808
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $"rt/flags/test<~lib/map/Map<i32,i32>>" (param $flags i32)
  i32.const 44
  call $~lib/rt/__typeinfo
  local.get $flags
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1808
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $"rt/flags/test<~lib/map/Map<i16,i64>>" (param $flags i32)
  i32.const 45
  call $~lib/rt/__typeinfo
  local.get $flags
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1808
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $"rt/flags/test<~lib/map/Map<i8,v128>>" (param $flags i32)
  i32.const 46
  call $~lib/rt/__typeinfo
  local.get $flags
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1808
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $"rt/flags/test<~lib/map/Map<rt/flags/Ref,i8>>" (param $flags i32)
  i32.const 47
  call $~lib/rt/__typeinfo
  local.get $flags
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1808
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $"rt/flags/test<~lib/map/Map<rt/flags/Ref|null,i8>>" (param $flags i32)
  i32.const 48
  call $~lib/rt/__typeinfo
  local.get $flags
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1808
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $"rt/flags/test<~lib/map/Map<i8,rt/flags/Ref>>" (param $flags i32)
  i32.const 49
  call $~lib/rt/__typeinfo
  local.get $flags
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1808
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $"rt/flags/test<~lib/map/Map<i8,rt/flags/Ref|null>>" (param $flags i32)
  i32.const 50
  call $~lib/rt/__typeinfo
  local.get $flags
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1808
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $"rt/flags/test<~lib/map/Map<rt/flags/Ref|null,rt/flags/Ref|null>>" (param $flags i32)
  i32.const 51
  call $~lib/rt/__typeinfo
  local.get $flags
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1808
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $"rt/flags/test<~lib/map/Map<f32,i32>>" (param $flags i32)
  i32.const 52
  call $~lib/rt/__typeinfo
  local.get $flags
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1808
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start:rt/flags
  i32.const 1
  i32.const 64
  i32.or
  i32.const 2048
  i32.or
  call $rt/flags/test<~lib/typedarray/Int8Array>
  i32.const 1
  i32.const 64
  i32.or
  call $rt/flags/test<~lib/typedarray/Uint8Array>
  i32.const 1
  i32.const 64
  i32.or
  call $rt/flags/test<~lib/typedarray/Uint8ClampedArray>
  i32.const 1
  i32.const 128
  i32.or
  i32.const 2048
  i32.or
  call $rt/flags/test<~lib/typedarray/Int16Array>
  i32.const 1
  i32.const 128
  i32.or
  call $rt/flags/test<~lib/typedarray/Uint16Array>
  i32.const 1
  i32.const 256
  i32.or
  i32.const 2048
  i32.or
  call $rt/flags/test<~lib/typedarray/Int32Array>
  i32.const 1
  i32.const 256
  i32.or
  call $rt/flags/test<~lib/typedarray/Uint32Array>
  i32.const 1
  i32.const 512
  i32.or
  i32.const 2048
  i32.or
  call $rt/flags/test<~lib/typedarray/Int64Array>
  i32.const 1
  i32.const 512
  i32.or
  call $rt/flags/test<~lib/typedarray/Uint64Array>
  i32.const 1
  i32.const 256
  i32.or
  i32.const 2048
  i32.or
  i32.const 4096
  i32.or
  call $rt/flags/test<~lib/typedarray/Float32Array>
  i32.const 1
  i32.const 512
  i32.or
  i32.const 2048
  i32.or
  i32.const 4096
  i32.or
  call $rt/flags/test<~lib/typedarray/Float64Array>
  i32.const 2
  i32.const 64
  i32.or
  i32.const 2048
  i32.or
  call $rt/flags/test<~lib/array/Array<i8>>
  i32.const 2
  i32.const 64
  i32.or
  call $rt/flags/test<~lib/array/Array<u8>>
  i32.const 2
  i32.const 128
  i32.or
  i32.const 2048
  i32.or
  call $rt/flags/test<~lib/array/Array<i16>>
  i32.const 2
  i32.const 128
  i32.or
  call $rt/flags/test<~lib/array/Array<u16>>
  i32.const 2
  i32.const 256
  i32.or
  i32.const 2048
  i32.or
  call $rt/flags/test<~lib/array/Array<i32>>
  i32.const 2
  i32.const 256
  i32.or
  call $rt/flags/test<~lib/array/Array<u32>>
  i32.const 2
  i32.const 512
  i32.or
  i32.const 2048
  i32.or
  call $rt/flags/test<~lib/array/Array<i64>>
  i32.const 2
  i32.const 512
  i32.or
  call $rt/flags/test<~lib/array/Array<u64>>
  i32.const 2
  i32.const 256
  i32.or
  i32.const 2048
  i32.or
  i32.const 4096
  i32.or
  call $rt/flags/test<~lib/array/Array<f32>>
  i32.const 2
  i32.const 512
  i32.or
  i32.const 2048
  i32.or
  i32.const 4096
  i32.or
  call $rt/flags/test<~lib/array/Array<f64>>
  i32.const 2
  i32.const 1024
  i32.or
  call $rt/flags/test<~lib/array/Array<v128>>
  i32.const 2
  global.get $rt/flags/VALUE_ALIGN_REF
  i32.or
  i32.const 16384
  i32.or
  call $rt/flags/test<~lib/array/Array<rt/flags/Ref>>
  i32.const 2
  global.get $rt/flags/VALUE_ALIGN_REF
  i32.or
  i32.const 8192
  i32.or
  i32.const 16384
  i32.or
  call $rt/flags/test<~lib/array/Array<rt/flags/Ref|null>>
  i32.const 8
  i32.const 64
  i32.or
  i32.const 2048
  i32.or
  call $rt/flags/test<~lib/set/Set<i8>>
  i32.const 8
  i32.const 64
  i32.or
  call $rt/flags/test<~lib/set/Set<u8>>
  i32.const 8
  i32.const 128
  i32.or
  i32.const 2048
  i32.or
  call $rt/flags/test<~lib/set/Set<i16>>
  i32.const 8
  i32.const 128
  i32.or
  call $rt/flags/test<~lib/set/Set<u16>>
  i32.const 8
  i32.const 256
  i32.or
  i32.const 2048
  i32.or
  call $rt/flags/test<~lib/set/Set<i32>>
  i32.const 8
  i32.const 256
  i32.or
  call $rt/flags/test<~lib/set/Set<u32>>
  i32.const 8
  i32.const 512
  i32.or
  i32.const 2048
  i32.or
  call $rt/flags/test<~lib/set/Set<i64>>
  i32.const 8
  i32.const 512
  i32.or
  call $rt/flags/test<~lib/set/Set<u64>>
  i32.const 8
  i32.const 256
  i32.or
  i32.const 2048
  i32.or
  i32.const 4096
  i32.or
  call $rt/flags/test<~lib/set/Set<f32>>
  i32.const 8
  i32.const 512
  i32.or
  i32.const 2048
  i32.or
  i32.const 4096
  i32.or
  call $rt/flags/test<~lib/set/Set<f64>>
  i32.const 8
  i32.const 1024
  i32.or
  call $rt/flags/test<~lib/set/Set<v128>>
  i32.const 8
  global.get $rt/flags/VALUE_ALIGN_REF
  i32.or
  i32.const 16384
  i32.or
  call $rt/flags/test<~lib/set/Set<rt/flags/Ref>>
  i32.const 8
  global.get $rt/flags/VALUE_ALIGN_REF
  i32.or
  i32.const 8192
  i32.or
  i32.const 16384
  i32.or
  call $rt/flags/test<~lib/set/Set<rt/flags/Ref|null>>
  i32.const 16
  i32.const 524288
  i32.or
  i32.const 64
  i32.or
  i32.const 2048
  i32.or
  call $"rt/flags/test<~lib/map/Map<v128,i8>>"
  i32.const 16
  i32.const 262144
  i32.or
  i32.const 1048576
  i32.or
  i32.const 128
  i32.or
  i32.const 2048
  i32.or
  call $"rt/flags/test<~lib/map/Map<i64,i16>>"
  i32.const 16
  i32.const 131072
  i32.or
  i32.const 1048576
  i32.or
  i32.const 256
  i32.or
  i32.const 2048
  i32.or
  call $"rt/flags/test<~lib/map/Map<i32,i32>>"
  i32.const 16
  i32.const 65536
  i32.or
  i32.const 1048576
  i32.or
  i32.const 512
  i32.or
  i32.const 2048
  i32.or
  call $"rt/flags/test<~lib/map/Map<i16,i64>>"
  i32.const 16
  i32.const 32768
  i32.or
  i32.const 1048576
  i32.or
  i32.const 1024
  i32.or
  call $"rt/flags/test<~lib/map/Map<i8,v128>>"
  i32.const 16
  global.get $rt/flags/KEY_ALIGN_REF
  i32.or
  i32.const 8388608
  i32.or
  i32.const 64
  i32.or
  i32.const 2048
  i32.or
  call $"rt/flags/test<~lib/map/Map<rt/flags/Ref,i8>>"
  i32.const 16
  global.get $rt/flags/KEY_ALIGN_REF
  i32.or
  i32.const 4194304
  i32.or
  i32.const 8388608
  i32.or
  i32.const 64
  i32.or
  i32.const 2048
  i32.or
  call $"rt/flags/test<~lib/map/Map<rt/flags/Ref|null,i8>>"
  i32.const 16
  i32.const 32768
  i32.or
  i32.const 1048576
  i32.or
  i32.const 16384
  i32.or
  global.get $rt/flags/VALUE_ALIGN_REF
  i32.or
  call $"rt/flags/test<~lib/map/Map<i8,rt/flags/Ref>>"
  i32.const 16
  i32.const 32768
  i32.or
  i32.const 1048576
  i32.or
  i32.const 8192
  i32.or
  i32.const 16384
  i32.or
  global.get $rt/flags/VALUE_ALIGN_REF
  i32.or
  call $"rt/flags/test<~lib/map/Map<i8,rt/flags/Ref|null>>"
  i32.const 16
  i32.const 4194304
  i32.or
  i32.const 8388608
  i32.or
  global.get $rt/flags/KEY_ALIGN_REF
  i32.or
  i32.const 8192
  i32.or
  i32.const 16384
  i32.or
  global.get $rt/flags/VALUE_ALIGN_REF
  i32.or
  call $"rt/flags/test<~lib/map/Map<rt/flags/Ref|null,rt/flags/Ref|null>>"
  i32.const 16
  i32.const 131072
  i32.or
  i32.const 1048576
  i32.or
  i32.const 2097152
  i32.or
  i32.const 256
  i32.or
  i32.const 2048
  i32.or
  call $"rt/flags/test<~lib/map/Map<f32,i32>>"
 )
 (func $~start
  call $start:rt/flags
 )
)
