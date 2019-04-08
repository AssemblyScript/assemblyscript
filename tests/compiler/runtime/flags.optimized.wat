(module
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\11\00\00\00 ")
 (data (i32.const 24) "r\00u\00n\00t\00i\00m\00e\00/\00f\00l\00a\00g\00s\00.\00t\00s")
 (data (i32.const 56) "\11\00\00\00,")
 (data (i32.const 72) "~\00l\00i\00b\00/\00a\00l\00l\00o\00c\00a\00t\00o\00r\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 120) "\11\00\00\00(")
 (data (i32.const 136) "~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00r\00u\00n\00t\00i\00m\00e\00.\00t\00s")
 (data (i32.const 176) ";\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\19\00\00\00\0f\00\00\00)\00\00\00\0f\00\00\00I\00\00\00\0f\00\00\00\89\00\00\00\0f\00\00\00\t\01\00\00\0f\00\00\00\08\00\00\00\00\00\00\00I\04\00\00\0f\00\00\00I\06\00\00\0f\00\00\00\1a\00\00\00\00\00\00\00*\00\00\00\00\00\00\00J\00\00\00\00\00\00\00\8a\00\00\00\00\00\00\00\n\01\00\00\00\00\00\00J\04\00\00\00\00\00\00J\06\00\00\00\00\00\00\1c\80\00\00\00\00\00\00,@\00\00\00\00\00\00L \00\00\00\00\00\00\8c\10\00\00\00\00\00\00\0c\t\00\00\00\00\00\00\1c \02\00\00\00\00\00\1c \03\00\00\00\00\00L\0c\00\00\00\00\00\00L\0e\00\00\00\00\00\00L&\03\00\00\00\00\00\08")
 (data (i32.const 560) "A\04\00\00\0f\00\00\00\08")
 (data (i32.const 584) "B\04\00\00\00\00\00\00\08")
 (data (i32.const 608) "D \02")
 (data (i32.const 624) "D$\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08")
 (global $~lib/allocator/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/state (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/fromSpace (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/toSpace (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/iter (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/white (mut i32) (i32.const 0))
 (global $~lib/runtime/ROOT (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "$.instanceof" (func $~lib/runtime/runtime.instanceof))
 (export "$.flags" (func $~lib/runtime/runtime.flags))
 (export "$.newObject" (func $~lib/runtime/runtime.newObject))
 (export "$.newString" (func $~lib/runtime/runtime.newString))
 (export "$.newArrayBuffer" (func $~lib/runtime/runtime.newArrayBuffer))
 (export "$.newArray" (func $~lib/runtime/runtime.newArray))
 (export "$.retain" (func $~lib/runtime/runtime.retain))
 (export "$.release" (func $~lib/runtime/runtime.release))
 (export "$.collect" (func $~lib/runtime/runtime.collect))
 (start $start)
 (func $~lib/runtime/runtime.flags (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.eqz
  local.tee $1
  i32.eqz
  if
   local.get $0
   i32.const 176
   i32.load
   i32.gt_u
   local.set $1
  end
  local.get $1
  if (result i32)
   unreachable
  else   
   local.get $0
   i32.const 3
   i32.shl
   i32.const 176
   i32.add
   i32.load
  end
 )
 (func $runtime/flags/test<~lib/array/Array<i8>> (; 2 ;) (type $FUNCSIG$v)
  i32.const 18
  i32.const 176
  i32.load
  i32.gt_u
  if (result i32)
   unreachable
  else   
   i32.const 320
   i32.load
  end
  i32.const 25
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/array/Array<i16>> (; 3 ;) (type $FUNCSIG$v)
  i32.const 19
  i32.const 176
  i32.load
  i32.gt_u
  if (result i32)
   unreachable
  else   
   i32.const 328
   i32.load
  end
  i32.const 41
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/array/Array<i32>> (; 4 ;) (type $FUNCSIG$v)
  i32.const 20
  i32.const 176
  i32.load
  i32.gt_u
  if (result i32)
   unreachable
  else   
   i32.const 336
   i32.load
  end
  i32.const 73
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/array/Array<i64>> (; 5 ;) (type $FUNCSIG$v)
  i32.const 21
  i32.const 176
  i32.load
  i32.gt_u
  if (result i32)
   unreachable
  else   
   i32.const 344
   i32.load
  end
  i32.const 137
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/array/Array<v128>> (; 6 ;) (type $FUNCSIG$v)
  i32.const 22
  i32.const 176
  i32.load
  i32.gt_u
  if (result i32)
   unreachable
  else   
   i32.const 352
   i32.load
  end
  i32.const 265
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/array/Array<runtime/flags/Ref>> (; 7 ;) (type $FUNCSIG$v)
  i32.const 24
  i32.const 176
  i32.load
  i32.gt_u
  if (result i32)
   unreachable
  else   
   i32.const 368
   i32.load
  end
  i32.const 1097
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/array/Array<runtime/flags/Ref | null>> (; 8 ;) (type $FUNCSIG$v)
  i32.const 25
  i32.const 176
  i32.load
  i32.gt_u
  if (result i32)
   unreachable
  else   
   i32.const 376
   i32.load
  end
  i32.const 1609
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/set/Set<i8>> (; 9 ;) (type $FUNCSIG$v)
  i32.const 26
  i32.const 176
  i32.load
  i32.gt_u
  if (result i32)
   unreachable
  else   
   i32.const 384
   i32.load
  end
  i32.const 26
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/set/Set<i16>> (; 10 ;) (type $FUNCSIG$v)
  i32.const 27
  i32.const 176
  i32.load
  i32.gt_u
  if (result i32)
   unreachable
  else   
   i32.const 392
   i32.load
  end
  i32.const 42
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/set/Set<i32>> (; 11 ;) (type $FUNCSIG$v)
  i32.const 28
  i32.const 176
  i32.load
  i32.gt_u
  if (result i32)
   unreachable
  else   
   i32.const 400
   i32.load
  end
  i32.const 74
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/set/Set<i64>> (; 12 ;) (type $FUNCSIG$v)
  i32.const 29
  i32.const 176
  i32.load
  i32.gt_u
  if (result i32)
   unreachable
  else   
   i32.const 408
   i32.load
  end
  i32.const 138
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/set/Set<v128>> (; 13 ;) (type $FUNCSIG$v)
  i32.const 30
  i32.const 176
  i32.load
  i32.gt_u
  if (result i32)
   unreachable
  else   
   i32.const 416
   i32.load
  end
  i32.const 266
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/set/Set<runtime/flags/Ref>> (; 14 ;) (type $FUNCSIG$v)
  i32.const 31
  i32.const 176
  i32.load
  i32.gt_u
  if (result i32)
   unreachable
  else   
   i32.const 424
   i32.load
  end
  i32.const 1098
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/set/Set<runtime/flags/Ref | null>> (; 15 ;) (type $FUNCSIG$v)
  i32.const 32
  i32.const 176
  i32.load
  i32.gt_u
  if (result i32)
   unreachable
  else   
   i32.const 432
   i32.load
  end
  i32.const 1610
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/map/Map<v128,i8>> (; 16 ;) (type $FUNCSIG$v)
  i32.const 33
  i32.const 176
  i32.load
  i32.gt_u
  if (result i32)
   unreachable
  else   
   i32.const 440
   i32.load
  end
  i32.const 32796
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/map/Map<i64,i16>> (; 17 ;) (type $FUNCSIG$v)
  i32.const 34
  i32.const 176
  i32.load
  i32.gt_u
  if (result i32)
   unreachable
  else   
   i32.const 448
   i32.load
  end
  i32.const 16428
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/map/Map<i32,i32>> (; 18 ;) (type $FUNCSIG$v)
  i32.const 35
  i32.const 176
  i32.load
  i32.gt_u
  if (result i32)
   unreachable
  else   
   i32.const 456
   i32.load
  end
  i32.const 8268
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/map/Map<i16,i64>> (; 19 ;) (type $FUNCSIG$v)
  i32.const 36
  i32.const 176
  i32.load
  i32.gt_u
  if (result i32)
   unreachable
  else   
   i32.const 464
   i32.load
  end
  i32.const 4236
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/map/Map<i8,v128>> (; 20 ;) (type $FUNCSIG$v)
  i32.const 37
  i32.const 176
  i32.load
  i32.gt_u
  if (result i32)
   unreachable
  else   
   i32.const 472
   i32.load
  end
  i32.const 2316
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/map/Map<runtime/flags/Ref,i8>> (; 21 ;) (type $FUNCSIG$v)
  i32.const 38
  i32.const 176
  i32.load
  i32.gt_u
  if (result i32)
   unreachable
  else   
   i32.const 480
   i32.load
  end
  i32.const 139292
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/map/Map<runtime/flags/Ref | null,i8>> (; 22 ;) (type $FUNCSIG$v)
  i32.const 39
  i32.const 176
  i32.load
  i32.gt_u
  if (result i32)
   unreachable
  else   
   i32.const 488
   i32.load
  end
  i32.const 204828
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/map/Map<i8,runtime/flags/Ref>> (; 23 ;) (type $FUNCSIG$v)
  i32.const 40
  i32.const 176
  i32.load
  i32.gt_u
  if (result i32)
   unreachable
  else   
   i32.const 496
   i32.load
  end
  i32.const 3148
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/map/Map<i8,runtime/flags/Ref | null>> (; 24 ;) (type $FUNCSIG$v)
  i32.const 41
  i32.const 176
  i32.load
  i32.gt_u
  if (result i32)
   unreachable
  else   
   i32.const 504
   i32.load
  end
  i32.const 3660
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<~lib/map/Map<runtime/flags/Ref | null,runtime/flags/Ref | null>> (; 25 ;) (type $FUNCSIG$v)
  i32.const 42
  i32.const 176
  i32.load
  i32.gt_u
  if (result i32)
   unreachable
  else   
   i32.const 512
   i32.load
  end
  i32.const 206412
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<runtime/flags/NoCycle> (; 26 ;) (type $FUNCSIG$v)
  i32.const 43
  i32.const 176
  i32.load
  i32.gt_u
  if (result i32)
   unreachable
  else   
   i32.const 520
   i32.load
  end
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<runtime/flags/DirectCycle> (; 27 ;) (type $FUNCSIG$v)
  i32.const 44
  i32.const 176
  i32.load
  i32.gt_u
  if (result i32)
   unreachable
  else   
   i32.const 528
   i32.load
  end
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<runtime/flags/IndirectCycle> (; 28 ;) (type $FUNCSIG$v)
  i32.const 45
  i32.const 176
  i32.load
  i32.gt_u
  if (result i32)
   unreachable
  else   
   i32.const 536
   i32.load
  end
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<runtime/flags/IndirectCycleArray> (; 29 ;) (type $FUNCSIG$v)
  i32.const 47
  i32.const 176
  i32.load
  i32.gt_u
  if (result i32)
   unreachable
  else   
   i32.const 552
   i32.load
  end
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<runtime/flags/InnerCycleArray> (; 30 ;) (type $FUNCSIG$v)
  i32.const 49
  i32.const 176
  i32.load
  i32.gt_u
  if (result i32)
   unreachable
  else   
   i32.const 568
   i32.load
  end
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<runtime/flags/IndirectCycleSet> (; 31 ;) (type $FUNCSIG$v)
  i32.const 50
  i32.const 176
  i32.load
  i32.gt_u
  if (result i32)
   unreachable
  else   
   i32.const 576
   i32.load
  end
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<runtime/flags/InnerCycleSet> (; 32 ;) (type $FUNCSIG$v)
  i32.const 52
  i32.const 176
  i32.load
  i32.gt_u
  if (result i32)
   unreachable
  else   
   i32.const 592
   i32.load
  end
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<runtime/flags/IndirectCycleMapKey> (; 33 ;) (type $FUNCSIG$v)
  i32.const 53
  i32.const 176
  i32.load
  i32.gt_u
  if (result i32)
   unreachable
  else   
   i32.const 600
   i32.load
  end
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<runtime/flags/IndirectCycleMapValue> (; 34 ;) (type $FUNCSIG$v)
  i32.const 55
  i32.const 176
  i32.load
  i32.gt_u
  if (result i32)
   unreachable
  else   
   i32.const 616
   i32.load
  end
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<runtime/flags/InnerCycleMapKey> (; 35 ;) (type $FUNCSIG$v)
  i32.const 57
  i32.const 176
  i32.load
  i32.gt_u
  if (result i32)
   unreachable
  else   
   i32.const 632
   i32.load
  end
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/flags/test<runtime/flags/InnerCycleMapValue> (; 36 ;) (type $FUNCSIG$v)
  i32.const 58
  i32.const 176
  i32.load
  i32.gt_u
  if (result i32)
   unreachable
  else   
   i32.const 640
   i32.load
  end
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start:runtime/flags (; 37 ;) (type $FUNCSIG$v)
  block
   call $runtime/flags/test<~lib/array/Array<i8>>
  end
  block
   call $runtime/flags/test<~lib/array/Array<i16>>
  end
  block
   call $runtime/flags/test<~lib/array/Array<i32>>
  end
  block
   call $runtime/flags/test<~lib/array/Array<i64>>
  end
  block
   call $runtime/flags/test<~lib/array/Array<v128>>
  end
  block
   call $runtime/flags/test<~lib/array/Array<runtime/flags/Ref>>
  end
  block
   call $runtime/flags/test<~lib/array/Array<runtime/flags/Ref | null>>
  end
  block
   call $runtime/flags/test<~lib/set/Set<i8>>
  end
  block
   call $runtime/flags/test<~lib/set/Set<i16>>
  end
  block
   call $runtime/flags/test<~lib/set/Set<i32>>
  end
  block
   call $runtime/flags/test<~lib/set/Set<i64>>
  end
  block
   call $runtime/flags/test<~lib/set/Set<v128>>
  end
  block
   call $runtime/flags/test<~lib/set/Set<runtime/flags/Ref>>
  end
  block
   call $runtime/flags/test<~lib/set/Set<runtime/flags/Ref | null>>
  end
  block
   call $runtime/flags/test<~lib/map/Map<v128,i8>>
  end
  block
   call $runtime/flags/test<~lib/map/Map<i64,i16>>
  end
  block
   call $runtime/flags/test<~lib/map/Map<i32,i32>>
  end
  block
   call $runtime/flags/test<~lib/map/Map<i16,i64>>
  end
  block
   call $runtime/flags/test<~lib/map/Map<i8,v128>>
  end
  block
   call $runtime/flags/test<~lib/map/Map<runtime/flags/Ref,i8>>
  end
  block
   call $runtime/flags/test<~lib/map/Map<runtime/flags/Ref | null,i8>>
  end
  block
   call $runtime/flags/test<~lib/map/Map<i8,runtime/flags/Ref>>
  end
  block
   call $runtime/flags/test<~lib/map/Map<i8,runtime/flags/Ref | null>>
  end
  block
   call $runtime/flags/test<~lib/map/Map<runtime/flags/Ref | null,runtime/flags/Ref | null>>
  end
  block
   call $runtime/flags/test<runtime/flags/NoCycle>
  end
  block
   call $runtime/flags/test<runtime/flags/DirectCycle>
  end
  block
   call $runtime/flags/test<runtime/flags/IndirectCycle>
  end
  block
   call $runtime/flags/test<runtime/flags/IndirectCycleArray>
  end
  block
   call $runtime/flags/test<runtime/flags/InnerCycleArray>
  end
  block
   call $runtime/flags/test<runtime/flags/IndirectCycleSet>
  end
  block
   call $runtime/flags/test<runtime/flags/InnerCycleSet>
  end
  block
   call $runtime/flags/test<runtime/flags/IndirectCycleMapKey>
  end
  block
   call $runtime/flags/test<runtime/flags/IndirectCycleMapValue>
  end
  block
   call $runtime/flags/test<runtime/flags/InnerCycleMapKey>
  end
  block
   call $runtime/flags/test<runtime/flags/InnerCycleMapValue>
  end
 )
 (func $~lib/runtime/runtime.instanceof (; 38 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 176
   i32.load
   i32.le_u
  else   
   local.get $0
  end
  if
   loop $continue|0
    local.get $0
    local.get $1
    i32.eq
    if
     i32.const 1
     return
    end
    local.get $0
    i32.const 3
    i32.shl
    i32.const 176
    i32.add
    i32.load offset=4
    local.tee $0
    br_if $continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/allocator/tlsf/Root#setSLMap (; 39 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  i32.const 22
  i32.ge_u
  if
   i32.const 0
   i32.const 72
   i32.const 159
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  local.get $2
  i32.store offset=4
 )
 (func $~lib/allocator/tlsf/Root#setHead (; 40 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  local.get $1
  i32.const 22
  i32.ge_u
  if
   i32.const 0
   i32.const 72
   i32.const 184
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 32
  i32.ge_u
  if
   i32.const 0
   i32.const 72
   i32.const 185
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 5
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  local.get $3
  i32.store offset=96
 )
 (func $~lib/allocator/tlsf/Block#get:right (; 41 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
  i32.const -4
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 104
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 8
  i32.add
  local.get $0
  i32.load
  i32.const -4
  i32.and
  i32.add
  local.tee $0
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 105
   i32.const 11
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $~lib/allocator/tlsf/fls<usize> (; 42 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 447
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 31
  local.get $0
  i32.clz
  i32.sub
 )
 (func $~lib/allocator/tlsf/Root#getHead (; 43 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $1
  i32.const 22
  i32.ge_u
  if
   i32.const 0
   i32.const 72
   i32.const 175
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 32
  i32.ge_u
  if
   i32.const 0
   i32.const 72
   i32.const 176
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 5
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load offset=96
 )
 (func $~lib/allocator/tlsf/Root#getSLMap (; 44 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.const 22
  i32.ge_u
  if
   i32.const 0
   i32.const 72
   i32.const 153
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load offset=4
 )
 (func $~lib/allocator/tlsf/Root#remove (; 45 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 277
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const -4
  i32.and
  local.tee $3
  i32.const 16
  i32.ge_u
  local.tee $2
  if
   local.get $3
   i32.const 1073741824
   i32.lt_u
   local.set $2
  end
  local.get $2
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 279
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $3
   i32.const 8
   i32.div_u
   local.set $4
   i32.const 0
  else   
   local.get $3
   local.get $3
   call $~lib/allocator/tlsf/fls<usize>
   local.tee $2
   i32.const 5
   i32.sub
   i32.shr_u
   i32.const 32
   i32.xor
   local.set $4
   local.get $2
   i32.const 7
   i32.sub
  end
  local.set $2
  local.get $1
  i32.load offset=8
  local.set $3
  local.get $1
  i32.load offset=4
  local.tee $5
  if
   local.get $5
   local.get $3
   i32.store offset=8
  end
  local.get $3
  if
   local.get $3
   local.get $5
   i32.store offset=4
  end
  local.get $0
  local.get $2
  local.get $4
  call $~lib/allocator/tlsf/Root#getHead
  local.get $1
  i32.eq
  if
   local.get $0
   local.get $2
   local.get $4
   local.get $3
   call $~lib/allocator/tlsf/Root#setHead
   local.get $3
   i32.eqz
   if
    local.get $0
    local.get $2
    local.get $0
    local.get $2
    call $~lib/allocator/tlsf/Root#getSLMap
    i32.const 1
    local.get $4
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.tee $1
    call $~lib/allocator/tlsf/Root#setSLMap
    local.get $1
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const 1
     local.get $2
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     i32.store
    end
   end
  end
 )
 (func $~lib/allocator/tlsf/Block#get:left (; 46 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
  i32.const 2
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 96
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 4
  i32.sub
  i32.load
  local.tee $0
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 97
   i32.const 11
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $~lib/allocator/tlsf/Root#setJump (; 47 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  i32.load
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 353
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/allocator/tlsf/Block#get:right
  local.get $1
  i32.ne
  if
   i32.const 0
   i32.const 72
   i32.const 354
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  i32.const 2
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 355
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.sub
  local.get $0
  i32.store
 )
 (func $~lib/allocator/tlsf/Root#insert (; 48 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 208
   i32.const 4
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
   i32.const 72
   i32.const 210
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  i32.const -4
  i32.and
  local.tee $4
  i32.const 16
  i32.ge_u
  local.tee $2
  if
   local.get $4
   i32.const 1073741824
   i32.lt_u
   local.set $2
  end
  local.get $2
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 212
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/allocator/tlsf/Block#get:right
  local.tee $2
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 216
   i32.const 23
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.load
  local.tee $4
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $2
   call $~lib/allocator/tlsf/Root#remove
   local.get $1
   local.get $4
   i32.const -4
   i32.and
   i32.const 8
   i32.add
   local.get $3
   i32.add
   local.tee $3
   i32.store
   local.get $1
   call $~lib/allocator/tlsf/Block#get:right
   local.tee $2
   i32.load
   local.set $4
  end
  local.get $3
  i32.const 2
  i32.and
  if
   local.get $1
   call $~lib/allocator/tlsf/Block#get:left
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 72
    i32.const 230
    i32.const 24
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.load
   local.tee $5
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 72
    i32.const 232
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   call $~lib/allocator/tlsf/Root#remove
   local.get $1
   local.get $3
   i32.const -4
   i32.and
   i32.const 8
   i32.add
   local.get $5
   i32.add
   local.tee $3
   i32.store
  end
  local.get $2
  local.get $4
  i32.const 2
  i32.or
  i32.store
  local.get $1
  local.get $2
  call $~lib/allocator/tlsf/Root#setJump
  local.get $3
  i32.const -4
  i32.and
  local.tee $3
  i32.const 16
  i32.ge_u
  local.tee $2
  if
   local.get $3
   i32.const 1073741824
   i32.lt_u
   local.set $2
  end
  local.get $2
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 245
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $3
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $3
   i32.const 8
   i32.div_u
   local.set $3
   i32.const 0
  else   
   local.get $3
   local.get $3
   call $~lib/allocator/tlsf/fls<usize>
   local.tee $2
   i32.const 5
   i32.sub
   i32.shr_u
   i32.const 32
   i32.xor
   local.set $3
   local.get $2
   i32.const 7
   i32.sub
  end
  local.tee $2
  local.get $3
  call $~lib/allocator/tlsf/Root#getHead
  local.set $4
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  local.get $4
  i32.store offset=8
  local.get $4
  if
   local.get $4
   local.get $1
   i32.store offset=4
  end
  local.get $0
  local.get $2
  local.get $3
  local.get $1
  call $~lib/allocator/tlsf/Root#setHead
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $2
  i32.shl
  i32.or
  i32.store
  local.get $0
  local.get $2
  local.get $0
  local.get $2
  call $~lib/allocator/tlsf/Root#getSLMap
  i32.const 1
  local.get $3
  i32.shl
  i32.or
  call $~lib/allocator/tlsf/Root#setSLMap
 )
 (func $~lib/allocator/tlsf/Root#addMemory (; 49 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.get $2
  i32.gt_u
  if
   i32.const 0
   i32.const 72
   i32.const 396
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 7
  i32.and
  if
   i32.const 0
   i32.const 72
   i32.const 397
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 7
  i32.and
  if
   i32.const 0
   i32.const 72
   i32.const 398
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2912
  i32.load
  local.tee $3
  if
   local.get $1
   local.get $3
   i32.const 4
   i32.add
   i32.lt_u
   if
    i32.const 0
    i32.const 72
    i32.const 403
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 8
   i32.sub
   local.get $3
   i32.eq
   if
    local.get $3
    i32.load
    local.set $4
    local.get $1
    i32.const 8
    i32.sub
    local.set $1
   end
  else   
   local.get $1
   local.get $0
   i32.const 2916
   i32.add
   i32.lt_u
   if
    i32.const 0
    i32.const 72
    i32.const 412
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  local.get $1
  i32.sub
  local.tee $2
  i32.const 32
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $4
  i32.const 2
  i32.and
  local.get $2
  i32.const 16
  i32.sub
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
  local.get $2
  i32.add
  i32.const 8
  i32.sub
  local.tee $2
  i32.const 2
  i32.store
  i32.const 2912
  local.get $2
  i32.store
  local.get $0
  local.get $1
  call $~lib/allocator/tlsf/Root#insert
 )
 (func $~lib/allocator/tlsf/ffs<usize> (; 50 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 441
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.ctz
 )
 (func $~lib/allocator/tlsf/Root#search (; 51 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i32.const 16
  i32.ge_u
  local.tee $2
  if
   local.get $1
   i32.const 1073741824
   i32.lt_u
   local.set $2
  end
  local.get $2
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 315
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 256
  i32.lt_u
  if (result i32)
   i32.const 0
   local.set $2
   local.get $1
   i32.const 8
   i32.div_u
  else   
   local.get $1
   call $~lib/allocator/tlsf/fls<usize>
   local.tee $3
   i32.const 7
   i32.sub
   local.set $2
   local.get $1
   local.get $3
   i32.const 5
   i32.sub
   i32.shr_u
   i32.const 32
   i32.xor
   local.tee $1
   i32.const 31
   i32.lt_u
   if (result i32)
    local.get $1
    i32.const 1
    i32.add
   else    
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    i32.const 0
   end
  end
  local.set $1
  local.get $0
  local.get $2
  call $~lib/allocator/tlsf/Root#getSLMap
  i32.const -1
  local.get $1
  i32.shl
  i32.and
  local.tee $1
  if (result i32)
   local.get $0
   local.get $2
   local.get $1
   call $~lib/allocator/tlsf/ffs<usize>
   call $~lib/allocator/tlsf/Root#getHead
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
    call $~lib/allocator/tlsf/ffs<usize>
    local.tee $2
    call $~lib/allocator/tlsf/Root#getSLMap
    local.tee $1
    i32.eqz
    if
     i32.const 0
     i32.const 72
     i32.const 342
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    local.get $1
    call $~lib/allocator/tlsf/ffs<usize>
    call $~lib/allocator/tlsf/Root#getHead
   else    
    i32.const 0
   end
  end
 )
 (func $~lib/allocator/tlsf/Root#use (; 52 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.load
  local.tee $4
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 367
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 16
  i32.ge_u
  local.tee $3
  if
   local.get $2
   i32.const 1073741824
   i32.lt_u
   local.set $3
  end
  local.get $3
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 368
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 7
  i32.and
  if
   i32.const 0
   i32.const 72
   i32.const 369
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/allocator/tlsf/Root#remove
  local.get $4
  i32.const -4
  i32.and
  local.get $2
  i32.sub
  local.tee $3
  i32.const 24
  i32.ge_u
  if
   local.get $1
   local.get $4
   i32.const 2
   i32.and
   local.get $2
   i32.or
   i32.store
   local.get $1
   i32.const 8
   i32.add
   local.get $2
   i32.add
   local.tee $2
   local.get $3
   i32.const 8
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $0
   local.get $2
   call $~lib/allocator/tlsf/Root#insert
  else   
   local.get $1
   local.get $4
   i32.const -2
   i32.and
   i32.store
   local.get $1
   call $~lib/allocator/tlsf/Block#get:right
   local.tee $0
   i32.eqz
   if
    i32.const 0
    i32.const 72
    i32.const 387
    i32.const 25
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $0
   i32.load
   i32.const -3
   i32.and
   i32.store
  end
  local.get $1
  i32.const 8
  i32.add
 )
 (func $~lib/allocator/tlsf/__mem_allocate (; 53 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/allocator/tlsf/ROOT
  local.tee $2
  i32.eqz
  if
   i32.const 1
   current_memory
   local.tee $1
   i32.gt_s
   local.tee $2
   if (result i32)
    i32.const 1
    local.get $1
    i32.sub
    grow_memory
    i32.const 0
    i32.lt_s
   else    
    local.get $2
   end
   if
    unreachable
   end
   i32.const 656
   local.set $2
   i32.const 656
   global.set $~lib/allocator/tlsf/ROOT
   i32.const 2912
   i32.const 0
   i32.store
   i32.const 656
   i32.const 0
   i32.store
   i32.const 0
   local.set $1
   loop $repeat|0
    local.get $1
    i32.const 22
    i32.lt_u
    if
     i32.const 656
     local.get $1
     i32.const 0
     call $~lib/allocator/tlsf/Root#setSLMap
     i32.const 0
     local.set $3
     loop $repeat|1
      local.get $3
      i32.const 32
      i32.lt_u
      if
       i32.const 656
       local.get $1
       local.get $3
       i32.const 0
       call $~lib/allocator/tlsf/Root#setHead
       local.get $3
       i32.const 1
       i32.add
       local.set $3
       br $repeat|1
      end
     end
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $repeat|0
    end
   end
   i32.const 656
   i32.const 3576
   current_memory
   i32.const 16
   i32.shl
   call $~lib/allocator/tlsf/Root#addMemory
  end
  local.get $0
  i32.const 1073741824
  i32.gt_u
  if
   unreachable
  end
  local.get $2
  local.get $0
  i32.const 7
  i32.add
  i32.const -8
  i32.and
  local.tee $0
  i32.const 16
  local.get $0
  i32.const 16
  i32.gt_u
  select
  local.tee $1
  call $~lib/allocator/tlsf/Root#search
  local.tee $0
  i32.eqz
  if
   current_memory
   local.tee $0
   local.get $1
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $3
   local.get $0
   local.get $3
   i32.gt_s
   select
   grow_memory
   i32.const 0
   i32.lt_s
   if
    local.get $3
    grow_memory
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
   local.get $2
   local.get $0
   i32.const 16
   i32.shl
   current_memory
   i32.const 16
   i32.shl
   call $~lib/allocator/tlsf/Root#addMemory
   local.get $2
   local.get $1
   call $~lib/allocator/tlsf/Root#search
   local.tee $0
   i32.eqz
   if
    i32.const 0
    i32.const 72
    i32.const 502
    i32.const 12
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  i32.load
  i32.const -4
  i32.and
  local.get $1
  i32.lt_u
  if
   i32.const 0
   i32.const 72
   i32.const 505
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $0
  local.get $1
  call $~lib/allocator/tlsf/Root#use
 )
 (func $~lib/util/runtime/allocate (; 54 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 1
  i32.const 32
  local.get $0
  i32.const 15
  i32.add
  i32.clz
  i32.sub
  i32.shl
  call $~lib/allocator/tlsf/__mem_allocate
  local.tee $1
  i32.const -1520547049
  i32.store
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 0
  i32.store offset=12
  local.get $1
  i32.const 16
  i32.add
 )
 (func $~lib/collector/itcm/maybeInit (; 55 ;) (type $FUNCSIG$v)
  (local $0 i32)
  global.get $~lib/collector/itcm/state
  i32.eqz
  if
   i32.const 16
   call $~lib/allocator/tlsf/__mem_allocate
   global.set $~lib/collector/itcm/fromSpace
   global.get $~lib/collector/itcm/fromSpace
   local.tee $0
   i32.const -1
   i32.store
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   local.get $0
   i32.store offset=8
   local.get $0
   local.get $0
   i32.store offset=12
   i32.const 16
   call $~lib/allocator/tlsf/__mem_allocate
   global.set $~lib/collector/itcm/toSpace
   global.get $~lib/collector/itcm/toSpace
   local.tee $0
   i32.const -1
   i32.store
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   local.get $0
   i32.store offset=8
   local.get $0
   local.get $0
   i32.store offset=12
   global.get $~lib/collector/itcm/toSpace
   global.set $~lib/collector/itcm/iter
   i32.const 1
   global.set $~lib/collector/itcm/state
  end
 )
 (func $~lib/collector/itcm/ManagedObjectList#push (; 56 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $1
  local.get $1
  i32.load offset=8
  i32.const 3
  i32.and
  local.get $0
  i32.or
  i32.store offset=8
  local.get $1
  local.get $2
  i32.store offset=12
  local.get $2
  local.get $2
  i32.load offset=8
  i32.const 3
  i32.and
  local.get $1
  i32.or
  i32.store offset=8
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/collector/itcm/__ref_register (; 57 ;) (type $FUNCSIG$vi) (param $0 i32)
  call $~lib/collector/itcm/maybeInit
  local.get $0
  i32.const 16
  i32.sub
  local.tee $0
  global.get $~lib/collector/itcm/white
  local.get $0
  i32.load offset=8
  i32.const -4
  i32.and
  i32.or
  i32.store offset=8
  global.get $~lib/collector/itcm/fromSpace
  local.get $0
  call $~lib/collector/itcm/ManagedObjectList#push
 )
 (func $~lib/util/runtime/register (; 58 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.const 656
  i32.le_u
  if
   i32.const 0
   i32.const 136
   i32.const 129
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 16
  i32.sub
  local.tee $2
  i32.load
  i32.const -1520547049
  i32.ne
  if
   i32.const 0
   i32.const 136
   i32.const 131
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  i32.store
  block
   local.get $0
   call $~lib/collector/itcm/__ref_register
  end
  local.get $0
 )
 (func $~lib/runtime/runtime.newObject (; 59 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  call $~lib/util/runtime/allocate
  local.get $1
  call $~lib/util/runtime/register
 )
 (func $~lib/runtime/runtime.newString (; 60 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 1
  i32.shl
  i32.const 17
  call $~lib/runtime/runtime.newObject
 )
 (func $~lib/runtime/runtime.newArrayBuffer (; 61 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  call $~lib/runtime/runtime.newObject
 )
 (func $~lib/collector/itcm/ManagedObject#makeGray (; 62 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/collector/itcm/iter
  local.get $0
  i32.eq
  if
   local.get $0
   i32.load offset=12
   global.set $~lib/collector/itcm/iter
  end
  local.get $0
  i32.load offset=8
  i32.const -4
  i32.and
  local.tee $2
  local.get $0
  i32.load offset=12
  local.tee $1
  i32.store offset=12
  local.get $1
  local.get $1
  i32.load offset=8
  i32.const 3
  i32.and
  local.get $2
  i32.or
  i32.store offset=8
  global.get $~lib/collector/itcm/toSpace
  local.get $0
  call $~lib/collector/itcm/ManagedObjectList#push
  local.get $0
  local.get $0
  i32.load offset=8
  i32.const -4
  i32.and
  i32.const 2
  i32.or
  i32.store offset=8
 )
 (func $~lib/collector/itcm/__ref_link (; 63 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  call $~lib/collector/itcm/maybeInit
  global.get $~lib/collector/itcm/white
  i32.eqz
  local.get $1
  i32.const 16
  i32.sub
  local.tee $2
  i32.load offset=8
  i32.const 3
  i32.and
  i32.eq
  local.tee $1
  if (result i32)
   global.get $~lib/collector/itcm/white
   local.get $0
   i32.const 16
   i32.sub
   i32.load offset=8
   i32.const 3
   i32.and
   i32.eq
  else   
   local.get $1
  end
  if
   local.get $2
   call $~lib/collector/itcm/ManagedObject#makeGray
  end
 )
 (func $~lib/runtime/runtime.newArray (; 64 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.tee $3
  i32.eqz
  local.tee $0
  if (result i32)
   local.get $0
  else   
   local.get $3
   i32.const 176
   i32.load
   i32.gt_u
  end
  if (result i32)
   unreachable
  else   
   local.get $3
   i32.const 3
   i32.shl
   i32.const 176
   i32.add
   i32.load
  end
  local.tee $0
  i32.const 16
  i32.div_u
  i32.const 31
  i32.and
  local.set $5
  local.get $1
  if (result i32)
   local.get $1
   i32.const 16
   i32.sub
   i32.load offset=4
  else   
   i32.const 0
   call $~lib/runtime/runtime.newArrayBuffer
   local.set $1
   i32.const 0
  end
  local.set $4
  local.get $3
  i32.const 16
  call $~lib/runtime/runtime.newObject
  local.tee $2
  local.set $3
  local.get $2
  i32.load
  local.get $1
  i32.ne
  if
   local.get $1
   local.get $3
   call $~lib/collector/itcm/__ref_link
  end
  local.get $2
  local.get $1
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $2
  local.get $4
  i32.store offset=8
  local.get $2
  local.get $4
  local.get $5
  i32.shr_u
  i32.store offset=12
  local.get $0
  i32.const 1024
  i32.and
  if
   local.get $1
   local.get $4
   i32.add
   local.set $4
   loop $continue|0
    local.get $1
    local.get $4
    i32.lt_u
    if
     local.get $1
     i32.load
     local.tee $0
     if
      local.get $0
      local.get $2
      call $~lib/collector/itcm/__ref_link
     end
     local.get $1
     i32.const 4
     i32.add
     local.set $1
     br $continue|0
    end
   end
  end
  local.get $2
 )
 (func $~lib/runtime/runtime.retain (; 65 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  global.get $~lib/runtime/ROOT
  call $~lib/collector/itcm/__ref_link
 )
 (func $~lib/runtime/runtime.release (; 66 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $~lib/allocator/tlsf/__mem_free (; 67 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  if
   global.get $~lib/allocator/tlsf/ROOT
   local.tee $1
   if
    local.get $0
    i32.const 8
    i32.sub
    local.tee $2
    i32.load
    local.tee $3
    i32.const 1
    i32.and
    if
     i32.const 0
     i32.const 72
     i32.const 518
     i32.const 6
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    local.get $3
    i32.const 1
    i32.or
    i32.store
    local.get $1
    local.get $0
    i32.const 8
    i32.sub
    call $~lib/allocator/tlsf/Root#insert
   end
  end
 )
 (func $~lib/collector/itcm/step (; 68 ;) (type $FUNCSIG$v)
  (local $0 i32)
  block $break|0
   block $case3|0
    block $case2|0
     block $case1|0
      global.get $~lib/collector/itcm/state
      local.tee $0
      if
       local.get $0
       i32.const 1
       i32.sub
       br_table $case1|0 $case2|0 $case3|0 $break|0
      end
      unreachable
     end
     call $~lib/runtime/__gc_mark_roots
     i32.const 2
     global.set $~lib/collector/itcm/state
     br $break|0
    end
    global.get $~lib/collector/itcm/iter
    i32.load offset=8
    i32.const -4
    i32.and
    local.tee $0
    global.get $~lib/collector/itcm/toSpace
    i32.ne
    if
     local.get $0
     global.set $~lib/collector/itcm/iter
     local.get $0
     global.get $~lib/collector/itcm/white
     i32.eqz
     local.get $0
     i32.load offset=8
     i32.const -4
     i32.and
     i32.or
     i32.store offset=8
     local.get $0
     i32.load
     local.get $0
     i32.const 16
     i32.add
     call $~lib/runtime/__gc_mark_members
    else     
     call $~lib/runtime/__gc_mark_roots
     global.get $~lib/collector/itcm/toSpace
     global.get $~lib/collector/itcm/iter
     i32.load offset=8
     i32.const -4
     i32.and
     i32.eq
     if
      global.get $~lib/collector/itcm/fromSpace
      local.set $0
      global.get $~lib/collector/itcm/toSpace
      global.set $~lib/collector/itcm/fromSpace
      local.get $0
      global.set $~lib/collector/itcm/toSpace
      global.get $~lib/collector/itcm/white
      i32.eqz
      global.set $~lib/collector/itcm/white
      local.get $0
      i32.load offset=8
      i32.const -4
      i32.and
      global.set $~lib/collector/itcm/iter
      i32.const 3
      global.set $~lib/collector/itcm/state
     end
    end
    br $break|0
   end
   global.get $~lib/collector/itcm/iter
   local.tee $0
   global.get $~lib/collector/itcm/toSpace
   i32.ne
   if
    local.get $0
    i32.load offset=8
    i32.const -4
    i32.and
    global.set $~lib/collector/itcm/iter
    local.get $0
    i32.const 656
    i32.ge_u
    if
     local.get $0
     call $~lib/allocator/tlsf/__mem_free
    end
   else    
    global.get $~lib/collector/itcm/toSpace
    local.tee $0
    local.get $0
    i32.store offset=8
    local.get $0
    local.get $0
    i32.store offset=12
    i32.const 1
    global.set $~lib/collector/itcm/state
   end
  end
 )
 (func $~lib/collector/itcm/__ref_collect (; 69 ;) (type $FUNCSIG$v)
  call $~lib/collector/itcm/maybeInit
  loop $continue|0
   global.get $~lib/collector/itcm/state
   i32.const 1
   i32.ne
   if
    call $~lib/collector/itcm/step
    br $continue|0
   end
  end
  loop $continue|1
   call $~lib/collector/itcm/step
   global.get $~lib/collector/itcm/state
   i32.const 1
   i32.ne
   br_if $continue|1
  end
 )
 (func $~lib/runtime/runtime.collect (; 70 ;) (type $FUNCSIG$v)
  call $~lib/collector/itcm/__ref_collect
 )
 (func $start (; 71 ;) (type $FUNCSIG$v)
  call $start:runtime/flags
  i32.const 0
  call $~lib/util/runtime/allocate
  i32.const 59
  call $~lib/util/runtime/register
  global.set $~lib/runtime/ROOT
 )
 (func $~lib/collector/itcm/__ref_mark (; 72 ;) (type $FUNCSIG$vi) (param $0 i32)
  call $~lib/collector/itcm/maybeInit
  global.get $~lib/collector/itcm/white
  local.get $0
  i32.const 16
  i32.sub
  local.tee $0
  i32.load offset=8
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $0
   call $~lib/collector/itcm/ManagedObject#makeGray
  end
 )
 (func $~lib/runtime/__gc_mark_roots (; 73 ;) (type $FUNCSIG$v)
  (local $0 i32)
  global.get $~lib/runtime/ROOT
  local.tee $0
  if
   local.get $0
   call $~lib/collector/itcm/__ref_mark
  end
 )
 (func $~lib/array/Array<runtime/flags/Ref>#__traverse (; 74 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  i32.load offset=8
  i32.add
  local.set $0
  loop $continue|0
   local.get $1
   local.get $0
   i32.lt_u
   if
    local.get $1
    i32.load
    local.tee $2
    call $~lib/collector/itcm/__ref_mark
    i32.const 23
    local.get $2
    call $~lib/runtime/__gc_mark_members
    local.get $1
    i32.const 4
    i32.add
    local.set $1
    br $continue|0
   end
  end
 )
 (func $~lib/array/Array<runtime/flags/Ref | null>#__traverse (; 75 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  i32.load offset=8
  i32.add
  local.set $2
  loop $continue|0
   local.get $1
   local.get $2
   i32.lt_u
   if
    local.get $1
    i32.load
    local.tee $0
    if
     local.get $0
     call $~lib/collector/itcm/__ref_mark
     i32.const 23
     local.get $0
     call $~lib/runtime/__gc_mark_members
    end
    local.get $1
    i32.const 4
    i32.add
    local.set $1
    br $continue|0
   end
  end
 )
 (func $~lib/set/Set<runtime/flags/Ref>#__traverse (; 76 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.tee $1
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=16
  i32.const 3
  i32.shl
  local.get $1
  i32.add
  local.set $0
  loop $continue|0
   local.get $1
   local.get $0
   i32.lt_u
   if
    local.get $1
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $1
     i32.load
     local.tee $2
     call $~lib/collector/itcm/__ref_mark
     i32.const 23
     local.get $2
     call $~lib/runtime/__gc_mark_members
    end
    local.get $1
    i32.const 8
    i32.add
    local.set $1
    br $continue|0
   end
  end
 )
 (func $~lib/set/Set<runtime/flags/Ref | null>#__traverse (; 77 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.tee $1
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=16
  i32.const 3
  i32.shl
  local.get $1
  i32.add
  local.set $2
  loop $continue|0
   local.get $1
   local.get $2
   i32.lt_u
   if
    local.get $1
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $1
     i32.load
     local.tee $0
     if
      local.get $0
      call $~lib/collector/itcm/__ref_mark
      i32.const 23
      local.get $0
      call $~lib/runtime/__gc_mark_members
     end
    end
    local.get $1
    i32.const 8
    i32.add
    local.set $1
    br $continue|0
   end
  end
 )
 (func $~lib/map/Map<runtime/flags/Ref,i8>#__traverse (; 78 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.tee $1
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  local.get $1
  i32.add
  local.set $0
  loop $continue|0
   local.get $1
   local.get $0
   i32.lt_u
   if
    local.get $1
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $1
     i32.load
     local.tee $2
     call $~lib/collector/itcm/__ref_mark
     i32.const 23
     local.get $2
     call $~lib/runtime/__gc_mark_members
    end
    local.get $1
    i32.const 12
    i32.add
    local.set $1
    br $continue|0
   end
  end
 )
 (func $~lib/map/Map<runtime/flags/Ref | null,i8>#__traverse (; 79 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.tee $1
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  local.get $1
  i32.add
  local.set $2
  loop $continue|0
   local.get $1
   local.get $2
   i32.lt_u
   if
    local.get $1
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $1
     i32.load
     local.tee $0
     if
      local.get $0
      call $~lib/collector/itcm/__ref_mark
      i32.const 23
      local.get $0
      call $~lib/runtime/__gc_mark_members
     end
    end
    local.get $1
    i32.const 12
    i32.add
    local.set $1
    br $continue|0
   end
  end
 )
 (func $~lib/map/Map<i8,runtime/flags/Ref>#__traverse (; 80 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.tee $1
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  local.get $1
  i32.add
  local.set $0
  loop $continue|0
   local.get $1
   local.get $0
   i32.lt_u
   if
    local.get $1
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $1
     i32.load offset=4
     local.tee $2
     call $~lib/collector/itcm/__ref_mark
     i32.const 23
     local.get $2
     call $~lib/runtime/__gc_mark_members
    end
    local.get $1
    i32.const 12
    i32.add
    local.set $1
    br $continue|0
   end
  end
 )
 (func $~lib/map/Map<i8,runtime/flags/Ref | null>#__traverse (; 81 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.tee $1
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  local.get $1
  i32.add
  local.set $2
  loop $continue|0
   local.get $1
   local.get $2
   i32.lt_u
   if
    local.get $1
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $1
     i32.load offset=4
     local.tee $0
     if
      local.get $0
      call $~lib/collector/itcm/__ref_mark
      i32.const 23
      local.get $0
      call $~lib/runtime/__gc_mark_members
     end
    end
    local.get $1
    i32.const 12
    i32.add
    local.set $1
    br $continue|0
   end
  end
 )
 (func $~lib/map/Map<runtime/flags/Ref | null,runtime/flags/Ref | null>#__traverse (; 82 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.tee $1
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  local.get $1
  i32.add
  local.set $2
  loop $continue|0
   local.get $1
   local.get $2
   i32.lt_u
   if
    local.get $1
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $1
     i32.load
     local.tee $0
     if
      local.get $0
      call $~lib/collector/itcm/__ref_mark
      i32.const 23
      local.get $0
      call $~lib/runtime/__gc_mark_members
     end
     local.get $1
     i32.load offset=4
     local.tee $0
     if
      local.get $0
      call $~lib/collector/itcm/__ref_mark
      i32.const 23
      local.get $0
      call $~lib/runtime/__gc_mark_members
     end
    end
    local.get $1
    i32.const 12
    i32.add
    local.set $1
    br $continue|0
   end
  end
 )
 (func $~lib/array/Array<runtime/flags/IndirectCycleArray>#__traverse (; 83 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  i32.load offset=8
  i32.add
  local.set $0
  loop $continue|0
   local.get $1
   local.get $0
   i32.lt_u
   if
    local.get $1
    i32.load
    local.tee $2
    call $~lib/collector/itcm/__ref_mark
    i32.const 47
    local.get $2
    call $~lib/runtime/__gc_mark_members
    local.get $1
    i32.const 4
    i32.add
    local.set $1
    br $continue|0
   end
  end
 )
 (func $~lib/set/Set<runtime/flags/IndirectCycleSet>#__traverse (; 84 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.tee $1
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=16
  i32.const 3
  i32.shl
  local.get $1
  i32.add
  local.set $0
  loop $continue|0
   local.get $1
   local.get $0
   i32.lt_u
   if
    local.get $1
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $1
     i32.load
     local.tee $2
     call $~lib/collector/itcm/__ref_mark
     i32.const 50
     local.get $2
     call $~lib/runtime/__gc_mark_members
    end
    local.get $1
    i32.const 8
    i32.add
    local.set $1
    br $continue|0
   end
  end
 )
 (func $~lib/map/Map<runtime/flags/IndirectCycleMapKey,i32>#__traverse (; 85 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.tee $1
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  local.get $1
  i32.add
  local.set $0
  loop $continue|0
   local.get $1
   local.get $0
   i32.lt_u
   if
    local.get $1
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $1
     i32.load
     local.tee $2
     call $~lib/collector/itcm/__ref_mark
     i32.const 53
     local.get $2
     call $~lib/runtime/__gc_mark_members
    end
    local.get $1
    i32.const 12
    i32.add
    local.set $1
    br $continue|0
   end
  end
 )
 (func $~lib/map/Map<i32,runtime/flags/IndirectCycleMapValue>#__traverse (; 86 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.tee $1
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  local.get $1
  i32.add
  local.set $0
  loop $continue|0
   local.get $1
   local.get $0
   i32.lt_u
   if
    local.get $1
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $1
     i32.load offset=4
     local.tee $2
     call $~lib/collector/itcm/__ref_mark
     i32.const 55
     local.get $2
     call $~lib/runtime/__gc_mark_members
    end
    local.get $1
    i32.const 12
    i32.add
    local.set $1
    br $continue|0
   end
  end
 )
 (func $~lib/runtime/__gc_mark_members (; 87 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  block $folding-inner1
   block $folding-inner0
    block $invalid
     block $~lib/runtime/Root
      block $runtime/flags/InnerCycleMapValue
       block $runtime/flags/InnerCycleMapKey
        block $~lib/map/Map<i32,runtime/flags/IndirectCycleMapValue>
         block $runtime/flags/IndirectCycleMapValue
          block $~lib/map/Map<runtime/flags/IndirectCycleMapKey,i32>
           block $runtime/flags/IndirectCycleMapKey
            block $runtime/flags/InnerCycleSet
             block $~lib/set/Set<runtime/flags/IndirectCycleSet>
              block $runtime/flags/IndirectCycleSet
               block $runtime/flags/InnerCycleArray
                block $~lib/array/Array<runtime/flags/IndirectCycleArray>
                 block $runtime/flags/IndirectCycleArray
                  block $runtime/flags/IndirectCycleBack
                   block $runtime/flags/IndirectCycle
                    block $runtime/flags/DirectCycle
                     block $runtime/flags/NoCycle
                      block $~lib/map/Map<runtime/flags/Ref | null,runtime/flags/Ref | null>
                       block $~lib/map/Map<i8,runtime/flags/Ref | null>
                        block $~lib/map/Map<i8,runtime/flags/Ref>
                         block $~lib/map/Map<runtime/flags/Ref | null,i8>
                          block $~lib/map/Map<runtime/flags/Ref,i8>
                           block $~lib/set/Set<runtime/flags/Ref | null>
                            block $~lib/set/Set<runtime/flags/Ref>
                             block $~lib/array/Array<runtime/flags/Ref | null>
                              block $~lib/array/Array<runtime/flags/Ref>
                               block $runtime/flags/Ref
                                block $~lib/string/String
                                 block $~lib/arraybuffer/ArrayBuffer
                                  block $~lib/arraybuffer/ArrayBufferView
                                   block $~lib/vector/V128
                                    block $~lib/number/F64
                                     block $~lib/number/F32
                                      block $~lib/number/Bool
                                       block $~lib/number/Usize
                                        block $~lib/number/U64
                                         block $~lib/number/U32
                                          block $~lib/number/U16
                                           block $~lib/number/U8
                                            block $~lib/number/Isize
                                             block $~lib/number/I64
                                              block $~lib/number/I32
                                               block $~lib/number/I16
                                                block $~lib/number/I8
                                                 local.get $0
                                                 i32.const 1
                                                 i32.sub
                                                 br_table $~lib/number/I8 $~lib/number/I16 $~lib/number/I32 $~lib/number/I64 $~lib/number/Isize $~lib/number/U8 $~lib/number/U16 $~lib/number/U32 $~lib/number/U64 $~lib/number/Usize $~lib/number/Bool $~lib/number/F32 $~lib/number/F64 $~lib/vector/V128 $~lib/arraybuffer/ArrayBufferView $~lib/arraybuffer/ArrayBuffer $~lib/string/String $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $runtime/flags/Ref $~lib/array/Array<runtime/flags/Ref> $~lib/array/Array<runtime/flags/Ref | null> $folding-inner1 $folding-inner1 $folding-inner1 $folding-inner1 $folding-inner1 $~lib/set/Set<runtime/flags/Ref> $~lib/set/Set<runtime/flags/Ref | null> $folding-inner1 $folding-inner1 $folding-inner1 $folding-inner1 $folding-inner1 $~lib/map/Map<runtime/flags/Ref,i8> $~lib/map/Map<runtime/flags/Ref | null,i8> $~lib/map/Map<i8,runtime/flags/Ref> $~lib/map/Map<i8,runtime/flags/Ref | null> $~lib/map/Map<runtime/flags/Ref | null,runtime/flags/Ref | null> $runtime/flags/NoCycle $runtime/flags/DirectCycle $runtime/flags/IndirectCycle $runtime/flags/IndirectCycleBack $runtime/flags/IndirectCycleArray $~lib/array/Array<runtime/flags/IndirectCycleArray> $runtime/flags/InnerCycleArray $runtime/flags/IndirectCycleSet $~lib/set/Set<runtime/flags/IndirectCycleSet> $runtime/flags/InnerCycleSet $runtime/flags/IndirectCycleMapKey $~lib/map/Map<runtime/flags/IndirectCycleMapKey,i32> $runtime/flags/IndirectCycleMapValue $~lib/map/Map<i32,runtime/flags/IndirectCycleMapValue> $runtime/flags/InnerCycleMapKey $runtime/flags/InnerCycleMapValue $~lib/runtime/Root $invalid
                                                end
                                                return
                                               end
                                               return
                                              end
                                              return
                                             end
                                             return
                                            end
                                            return
                                           end
                                           return
                                          end
                                          return
                                         end
                                         return
                                        end
                                        return
                                       end
                                       return
                                      end
                                      return
                                     end
                                     return
                                    end
                                    return
                                   end
                                   return
                                  end
                                  local.get $1
                                  i32.load
                                  local.tee $0
                                  if
                                   local.get $0
                                   call $~lib/collector/itcm/__ref_mark
                                   i32.const 16
                                   local.get $0
                                   call $~lib/runtime/__gc_mark_members
                                  end
                                  return
                                 end
                                 return
                                end
                                return
                               end
                               return
                              end
                              local.get $1
                              call $~lib/array/Array<runtime/flags/Ref>#__traverse
                              return
                             end
                             local.get $1
                             call $~lib/array/Array<runtime/flags/Ref | null>#__traverse
                             return
                            end
                            local.get $1
                            call $~lib/set/Set<runtime/flags/Ref>#__traverse
                            return
                           end
                           local.get $1
                           call $~lib/set/Set<runtime/flags/Ref | null>#__traverse
                           return
                          end
                          local.get $1
                          call $~lib/map/Map<runtime/flags/Ref,i8>#__traverse
                          return
                         end
                         local.get $1
                         call $~lib/map/Map<runtime/flags/Ref | null,i8>#__traverse
                         return
                        end
                        local.get $1
                        call $~lib/map/Map<i8,runtime/flags/Ref>#__traverse
                        return
                       end
                       local.get $1
                       call $~lib/map/Map<i8,runtime/flags/Ref | null>#__traverse
                       return
                      end
                      local.get $1
                      call $~lib/map/Map<runtime/flags/Ref | null,runtime/flags/Ref | null>#__traverse
                      return
                     end
                     return
                    end
                    local.get $1
                    i32.load
                    local.tee $0
                    if
                     local.get $0
                     call $~lib/collector/itcm/__ref_mark
                     i32.const 44
                     local.get $0
                     call $~lib/runtime/__gc_mark_members
                    end
                    return
                   end
                   local.get $1
                   i32.load
                   local.tee $0
                   if
                    local.get $0
                    call $~lib/collector/itcm/__ref_mark
                    i32.const 46
                    local.get $0
                    call $~lib/runtime/__gc_mark_members
                   end
                   return
                  end
                  local.get $1
                  i32.load
                  local.tee $0
                  if
                   local.get $0
                   call $~lib/collector/itcm/__ref_mark
                   i32.const 45
                   local.get $0
                   call $~lib/runtime/__gc_mark_members
                  end
                  return
                 end
                 local.get $1
                 i32.load
                 local.tee $0
                 if
                  local.get $0
                  call $~lib/collector/itcm/__ref_mark
                  i32.const 48
                  local.get $0
                  call $~lib/runtime/__gc_mark_members
                 end
                 return
                end
                local.get $1
                call $~lib/array/Array<runtime/flags/IndirectCycleArray>#__traverse
                return
               end
               local.get $1
               i32.load
               local.tee $0
               if
                local.get $0
                call $~lib/collector/itcm/__ref_mark
                i32.const 47
                local.get $0
                call $~lib/runtime/__gc_mark_members
               end
               return
              end
              local.get $1
              i32.load
              local.tee $0
              if
               local.get $0
               call $~lib/collector/itcm/__ref_mark
               i32.const 51
               local.get $0
               call $~lib/runtime/__gc_mark_members
              end
              return
             end
             local.get $1
             call $~lib/set/Set<runtime/flags/IndirectCycleSet>#__traverse
             return
            end
            local.get $1
            i32.load
            local.tee $0
            if
             local.get $0
             call $~lib/collector/itcm/__ref_mark
             i32.const 50
             local.get $0
             call $~lib/runtime/__gc_mark_members
            end
            return
           end
           local.get $1
           i32.load
           local.tee $0
           if
            local.get $0
            call $~lib/collector/itcm/__ref_mark
            i32.const 54
            local.get $0
            call $~lib/runtime/__gc_mark_members
           end
           return
          end
          local.get $1
          call $~lib/map/Map<runtime/flags/IndirectCycleMapKey,i32>#__traverse
          return
         end
         local.get $1
         i32.load
         local.tee $0
         if
          local.get $0
          call $~lib/collector/itcm/__ref_mark
          i32.const 56
          local.get $0
          call $~lib/runtime/__gc_mark_members
         end
         return
        end
        local.get $1
        call $~lib/map/Map<i32,runtime/flags/IndirectCycleMapValue>#__traverse
        return
       end
       local.get $1
       i32.load
       local.tee $0
       if
        local.get $0
        call $~lib/collector/itcm/__ref_mark
        i32.const 53
        local.get $0
        call $~lib/runtime/__gc_mark_members
       end
       return
      end
      local.get $1
      i32.load
      local.tee $0
      if
       local.get $0
       call $~lib/collector/itcm/__ref_mark
       i32.const 55
       local.get $0
       call $~lib/runtime/__gc_mark_members
      end
      return
     end
     return
    end
    unreachable
   end
   local.get $1
   i32.load
   call $~lib/collector/itcm/__ref_mark
   return
  end
  local.get $1
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $1
  i32.load offset=8
  call $~lib/collector/itcm/__ref_mark
 )
 (func $null (; 88 ;) (type $FUNCSIG$v)
  nop
 )
)
