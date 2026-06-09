(module
 (type $0 (func (param i32) (result i32)))
 (type $1 (func (result i32)))
 (type $2 (func (param i32 i32) (result i32)))
 (type $3 (func (param i32 i32 i32 i32)))
 (type $4 (func))
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
 (global $~lib/util/xjb/xjb/POW10_SMALL i32 (i32.const 208))
 (global $~lib/util/xjb/xjb/DIGIT_PAIRS i32 (i32.const 336))
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
 (global $~lib/util/xjb/xjb/SCRATCH i32 (i32.const 544))
 (global $~lib/util/xjb/ftoa/HAS_SIMD i32 (i32.const 0))
 (global $~lib/util/xjb/ftoa/POW10_FLOAT_HI i32 (i32.const 672))
 (global $~lib/util/xjb/ftoa/H37 i32 (i32.const 1288))
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
 (global $~lib/util/xjb/ftoa/DIGIT_PAIRS i32 (i32.const 1544))
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
 (global $~lib/util/xjb/ftoa/SCRATCH i32 (i32.const 1744))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/memory/__data_end i32 (i32.const 2124))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 34892))
 (global $~lib/memory/__heap_base i32 (i32.const 34892))
 (memory $0 1)
 (data $0 (i32.const 12) "|\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00^\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00n\00u\00l\00l\00\'\00 \00(\00n\00o\00t\00 \00a\00s\00s\00i\00g\00n\00e\00d\00 \00o\00r\00 \00f\00a\00i\00l\00e\00d\00 \00c\00a\00s\00t\00)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $1 (i32.const 140) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\"\00\00\00a\00s\00s\00e\00r\00t\00-\00n\00o\00n\00n\00u\00l\00l\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00")
 (data $2 (i32.const 208) "\01\00\00\00\00\00\00\00\n\00\00\00\00\00\00\00d\00\00\00\00\00\00\00\e8\03\00\00\00\00\00\00\10\'\00\00\00\00\00\00\a0\86\01\00\00\00\00\00@B\0f\00\00\00\00\00\80\96\98\00\00\00\00\00\00\e1\f5\05\00\00\00\00\00\ca\9a;\00\00\00\00\00\e4\0bT\02\00\00\00\00\e8vH\17\00\00\00\00\10\a5\d4\e8\00\00\00\00\a0rN\18\t\00\00\00@z\10\f3Z\00\00\00\80\c6\a4~\8d\03\00")
 (data $3 (i32.const 336) "00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899")
 (data $4 (i32.const 544) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $5 (i32.const 672) "p\\\ea{\ce2~\8f\1a\c7C\c6\b0\b7\96\e5\ae\05\03\05\'\c6\ab\b7\bf7\cf\d0\b8\d1\ef\92\fe%\e5\1a\8eO\19\eb2\ebP\e2\a4?\14\bc\f5\88\r\b5P\99v\96!\dbH\bb\1a\c2\bd\f0\b4\15\07\c9{\ce\97\c0]\11l:\96\0b\13\9a\c7\1b\e0\c3V\df\84\f6\06\e3L6\12\197\c5\9e\b5p+\a8\ad\c5\9d\97\"\81E@|o\fc\dfNg\04\cd\c9\f2\c9\e6\0b\b96\d7\07\8f\a1\85\t\94\f8x9?\81:\0f \f4\'\8f\cb\ce\c8\a5\19\90\b9\a5o\a5\a0\84\14@aQY\84\00\a1\ed\cc\ce\1b\c2\d3\00\b4W\n?\16h\a9\00\90\acn2x\86\87\00\80z\17\b7&\d7\d8\00\00b\ac\c5\ebx\ad\00\00\e8\89\04#\c7\8a\00\00@v:k\0b\de\00\00\00\c5.\bc\a2\b1\00\00\00\04\bf\c9\1b\8e\00\00\00\a01\a9_\e3\00\00\00\80\f4 \e6\b5\00\00\00\00*\e7\84\91\00\00\00\00\10\a5\d4\e8\00\00\00\00@\b7C\ba\00\00\00\00\00\f9\02\95\00\00\00\00\00(k\ee\00\00\00\00\00 \bc\be\00\00\00\00\00\80\96\98\00\00\00\00\00\00$\f4\00\00\00\00\00\00P\c3\00\00\00\00\00\00@\9c\00\00\00\00\00\00\00\fa\00\00\00\00\00\00\00\c8\00\00\00\00\00\00\00\a0\00\00\00\00\00\00\00\80\cd\cc\cc\cc\cc\cc\cc\cc\0b\d7\a3p=\n\d7\a3<\dfO\8d\97n\12\83,e\19\e2X\17\b7\d1$\84G\1bG\ac\c5\a7\b6il\af\05\bd7\86\bdBz\e5\d5\94\bf\d6\fd\cea\84\11w\cc\ab\98\a5\b46A_p\89\bf\d5\ed\bd\ce\fe\e6\db\ff\aa$\cb\0b\ff\eb\af\cc\88Po\t\cc\bc\8c\14\0e\b4KB\13.\e1\10\d8\\\t5\dc$\b4\da\ac\b0:\f7|\1d\90\\\e1M\c4\be\94\95\e6J\b4\a462\aaw\b8\08]\1d\92\8e\ee\92\93\a6a\95\b6}J\1e\ec\eb\1a\11\92d\08\e5\bc\ef{\datP\a0\1d\97\b2,\f7\ba\80\00\c9\f1(\8a\92\95\00\9am\c1S;uD\cd\14\be\9aR\c5\ee\d3\ae\87\96\f7\db\9dXv%\06\12\c6I~\e0\91\b7\d1t\9e\0e\ca\00\83\f2\b5\87\fd?;\9a5\f5\f7\d2\ca2\fc\14^\f7_B\a2\f5\fcCK,\b3\ce\81\bb\949E\ad\1e\b1\cf")
 (data $6 (i32.const 1288) "\"\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$\"#$!\"#")
 (data $7 (i32.const 1544) "00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899")
 (data $8 (i32.const 1744) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $9 (i32.const 1884) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00\00\00\00\00\00\00\00\00")
 (data $10 (i32.const 1948) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00\00\00")
 (data $11 (i32.const 1996) "|\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "memory" (memory $0))
 (export "testVar" (func $export:assert-nonnull/testVar))
 (export "testObj" (func $export:assert-nonnull/testObj))
 (export "testProp" (func $export:assert-nonnull/testProp))
 (export "testArr" (func $export:assert-nonnull/testArr))
 (export "testElem" (func $export:assert-nonnull/testElem))
 (export "testAll" (func $export:assert-nonnull/testAll))
 (export "testAll2" (func $export:assert-nonnull/testAll2))
 (export "testFn" (func $export:assert-nonnull/testFn))
 (export "testFn2" (func $export:assert-nonnull/testFn2))
 (export "testRet" (func $export:assert-nonnull/testRet))
 (export "testObjFn" (func $export:assert-nonnull/testObjFn))
 (export "testObjRet" (func $export:assert-nonnull/testObjRet))
 (func $assert-nonnull/Foo#get:bar (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/array/Array<assert-nonnull/Foo>#get:length_ (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/array/Array<assert-nonnull/Foo>#get:dataStart (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/array/Array<assert-nonnull/Foo|null>#get:length_ (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/array/Array<assert-nonnull/Foo|null>#get:dataStart (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $assert-nonnull/Foo#get:baz (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 34912
   i32.const 34960
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $assert-nonnull/testObj (param $foo i32) (result i32)
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
  global.get $~lib/memory/__stack_pointer
  local.get $foo
  local.tee $1
  i32.store offset=4
  local.get $1
  if (result i32)
   local.get $1
  else
   i32.const 32
   i32.const 160
   i32.const 11
   i32.const 10
   call $~lib/builtins/abort
   unreachable
  end
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $assert-nonnull/Foo#get:bar
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $assert-nonnull/testProp (param $foo i32) (result i32)
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
  global.get $~lib/memory/__stack_pointer
  local.get $foo
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $assert-nonnull/Foo#get:bar
  local.tee $1
  i32.store offset=4
  local.get $1
  if (result i32)
   local.get $1
  else
   i32.const 32
   i32.const 160
   i32.const 15
   i32.const 10
   call $~lib/builtins/abort
   unreachable
  end
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $~lib/array/Array<assert-nonnull/Foo>#__get (param $this i32) (param $index i32) (result i32)
  (local $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<assert-nonnull/Foo>#get:length_
  i32.ge_u
  if
   i32.const 1904
   i32.const 1968
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<assert-nonnull/Foo>#get:dataStart
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $value
  i32.store offset=4
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $value
  i32.eqz
  if
   i32.const 2016
   i32.const 1968
   i32.const 118
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $value
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $assert-nonnull/testArr (param $foo i32) (result i32)
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
  global.get $~lib/memory/__stack_pointer
  local.get $foo
  local.tee $1
  i32.store offset=4
  local.get $1
  if (result i32)
   local.get $1
  else
   i32.const 32
   i32.const 160
   i32.const 19
   i32.const 10
   call $~lib/builtins/abort
   unreachable
  end
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  i32.const 0
  call $~lib/array/Array<assert-nonnull/Foo>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $~lib/array/Array<assert-nonnull/Foo|null>#__get (param $this i32) (param $index i32) (result i32)
  (local $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<assert-nonnull/Foo|null>#get:length_
  i32.ge_u
  if
   i32.const 1904
   i32.const 1968
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<assert-nonnull/Foo|null>#get:dataStart
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $value
  i32.store offset=4
  i32.const 1
  drop
  i32.const 1
  i32.eqz
  drop
  local.get $value
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $assert-nonnull/testElem (param $foo i32) (result i32)
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
  global.get $~lib/memory/__stack_pointer
  local.get $foo
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  i32.const 0
  call $~lib/array/Array<assert-nonnull/Foo|null>#__get
  local.tee $1
  i32.store offset=4
  local.get $1
  if (result i32)
   local.get $1
  else
   i32.const 32
   i32.const 160
   i32.const 23
   i32.const 10
   call $~lib/builtins/abort
   unreachable
  end
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $assert-nonnull/testAll (param $foo i32) (result i32)
  (local $1 i32)
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
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  local.get $foo
  local.tee $1
  i32.store offset=8
  local.get $1
  if (result i32)
   local.get $1
  else
   i32.const 32
   i32.const 160
   i32.const 27
   i32.const 10
   call $~lib/builtins/abort
   unreachable
  end
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  i32.const 0
  call $~lib/array/Array<assert-nonnull/Foo|null>#__get
  local.tee $2
  i32.store offset=12
  local.get $2
  if (result i32)
   local.get $2
  else
   i32.const 32
   i32.const 160
   i32.const 27
   i32.const 10
   call $~lib/builtins/abort
   unreachable
  end
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $assert-nonnull/Foo#get:bar
  local.tee $3
  i32.store offset=16
  local.get $3
  if (result i32)
   local.get $3
  else
   i32.const 32
   i32.const 160
   i32.const 27
   i32.const 10
   call $~lib/builtins/abort
   unreachable
  end
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $assert-nonnull/testAll2 (param $foo i32) (result i32)
  (local $1 i32)
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
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  local.get $foo
  local.tee $1
  i32.store offset=8
  local.get $1
  if (result i32)
   local.get $1
  else
   i32.const 32
   i32.const 160
   i32.const 31
   i32.const 10
   call $~lib/builtins/abort
   unreachable
  end
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  i32.const 0
  call $~lib/array/Array<assert-nonnull/Foo|null>#__get
  local.tee $2
  i32.store offset=12
  local.get $2
  if (result i32)
   local.get $2
  else
   i32.const 32
   i32.const 160
   i32.const 31
   i32.const 10
   call $~lib/builtins/abort
   unreachable
  end
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $assert-nonnull/Foo#get:bar
  local.tee $3
  i32.store offset=16
  local.get $3
  if (result i32)
   local.get $3
  else
   i32.const 32
   i32.const 160
   i32.const 31
   i32.const 10
   call $~lib/builtins/abort
   unreachable
  end
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $assert-nonnull/testObjFn (param $foo i32) (result i32)
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
  i32.const 0
  global.set $~argumentsLength
  global.get $~lib/memory/__stack_pointer
  local.get $foo
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $assert-nonnull/Foo#get:baz
  local.tee $1
  i32.store offset=4
  local.get $1
  if (result i32)
   local.get $1
  else
   i32.const 32
   i32.const 160
   i32.const 48
   i32.const 10
   call $~lib/builtins/abort
   unreachable
  end
  i32.load
  call_indirect (type $1)
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $assert-nonnull/testObjRet (param $foo i32) (result i32)
  (local $1 i32)
  (local $2 i32)
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
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  global.get $~lib/memory/__stack_pointer
  local.get $foo
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $assert-nonnull/Foo#get:baz
  local.tee $1
  i32.store offset=4
  local.get $1
  if (result i32)
   local.get $1
  else
   i32.const 32
   i32.const 160
   i32.const 52
   i32.const 10
   call $~lib/builtins/abort
   unreachable
  end
  i32.load
  call_indirect (type $1)
  local.tee $2
  i32.store offset=8
  local.get $2
  if (result i32)
   local.get $2
  else
   i32.const 32
   i32.const 160
   i32.const 52
   i32.const 10
   call $~lib/builtins/abort
   unreachable
  end
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $assert-nonnull/testVar (param $n i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $n
  local.tee $1
  i32.store
  local.get $1
  if (result i32)
   local.get $1
  else
   i32.const 32
   i32.const 160
   i32.const 2
   i32.const 10
   call $~lib/builtins/abort
   unreachable
  end
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $assert-nonnull/testFn (param $fn i32) (result i32)
  (local $1 i32)
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
  global.set $~argumentsLength
  global.get $~lib/memory/__stack_pointer
  local.get $fn
  local.tee $1
  i32.store
  local.get $1
  if (result i32)
   local.get $1
  else
   i32.const 32
   i32.const 160
   i32.const 35
   i32.const 10
   call $~lib/builtins/abort
   unreachable
  end
  i32.load
  call_indirect (type $1)
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $assert-nonnull/testFn2 (param $fn i32) (result i32)
  (local $1 i32)
  (local $fn2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  local.get $fn
  local.tee $1
  i32.store
  local.get $1
  if (result i32)
   local.get $1
  else
   i32.const 32
   i32.const 160
   i32.const 39
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.tee $fn2
  i32.store offset=4
  i32.const 0
  global.set $~argumentsLength
  local.get $fn2
  i32.load
  call_indirect (type $1)
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $assert-nonnull/testRet (param $fn i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.set $~argumentsLength
  global.get $~lib/memory/__stack_pointer
  local.get $fn
  local.tee $1
  i32.store
  local.get $1
  if (result i32)
   local.get $1
  else
   i32.const 32
   i32.const 160
   i32.const 44
   i32.const 10
   call $~lib/builtins/abort
   unreachable
  end
  i32.load
  call_indirect (type $1)
  local.tee $2
  i32.store offset=4
  local.get $2
  if (result i32)
   local.get $2
  else
   i32.const 32
   i32.const 160
   i32.const 44
   i32.const 10
   call $~lib/builtins/abort
   unreachable
  end
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $export:assert-nonnull/testVar (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assert-nonnull/testVar
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:assert-nonnull/testObj (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assert-nonnull/testObj
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:assert-nonnull/testProp (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assert-nonnull/testProp
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:assert-nonnull/testArr (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assert-nonnull/testArr
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:assert-nonnull/testElem (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assert-nonnull/testElem
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:assert-nonnull/testAll (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assert-nonnull/testAll
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:assert-nonnull/testAll2 (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assert-nonnull/testAll2
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:assert-nonnull/testFn (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assert-nonnull/testFn
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:assert-nonnull/testFn2 (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assert-nonnull/testFn2
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:assert-nonnull/testRet (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assert-nonnull/testRet
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:assert-nonnull/testObjFn (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assert-nonnull/testObjFn
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:assert-nonnull/testObjRet (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assert-nonnull/testObjRet
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
)
