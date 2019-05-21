(module
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00")
 (data (i32.const 64) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s\00")
 (data (i32.const 104) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00r\00t\00/\00f\00l\00a\00g\00s\00.\00t\00s\00")
 (data (i32.const 144) "-\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\19\00\00\00\03\00\00\00)\00\00\00\03\00\00\00I\00\00\00\03\00\00\00\89\00\00\00\03\00\00\00\t\01\00\00\03\00\00\00\08\00\00\00\00\00\00\00I\04\00\00\03\00\00\00I\06\00\00\03\00\00\00\1a\00\00\00\00\00\00\00*\00\00\00\00\00\00\00J\00\00\00\00\00\00\00\8a\00\00\00\00\00\00\00\n\01\00\00\00\00\00\00J\04\00\00\00\00\00\00J\06\00\00\00\00\00\00\1c\80\00\00\00\00\00\00,@\00\00\00\00\00\00L \00\00\00\00\00\00\8c\10\00\00\00\00\00\00\0c\t\00\00\00\00\00\00\1c \02\00\00\00\00\00\1c \03\00\00\00\00\00L\0c\00\00\00\00\00\00L\0e\00\00\00\00\00\00L&\03\00\00\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00A\04\00\00\03\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00B\04\00\00\00\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00D \02\00\00\00\00\00\00\00\00\00\00\00\00\00D$\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $rt/flags/VALUE_ALIGN_REF i32 (i32.const 64))
 (global $rt/flags/KEY_ALIGN_REF i32 (i32.const 8192))
 (global $~lib/rt/RTTI_BASE i32 (i32.const 144))
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/rt/__typeinfo (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/rt/RTTI_BASE
  local.set $1
  local.get $0
  local.get $1
  i32.load
  i32.gt_u
  if
   i32.const 24
   i32.const 80
   i32.const 22
   i32.const 27
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  local.get $0
  i32.const 8
  i32.mul
  i32.add
  i32.load
 )
 (func $rt/flags/test<~lib/array/Array<i8>> (; 2 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 4
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/array/Array<i16>> (; 3 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 5
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/array/Array<i32>> (; 4 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 6
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/array/Array<i64>> (; 5 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 7
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/array/Array<v128>> (; 6 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 8
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/array/Array<rt/flags/Ref>> (; 7 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 10
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/array/Array<rt/flags/Ref | null>> (; 8 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 11
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/set/Set<i8>> (; 9 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 12
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/set/Set<i16>> (; 10 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 13
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/set/Set<i32>> (; 11 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 14
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/set/Set<i64>> (; 12 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 15
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/set/Set<v128>> (; 13 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 16
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/set/Set<rt/flags/Ref>> (; 14 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 17
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/set/Set<rt/flags/Ref | null>> (; 15 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 18
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/map/Map<v128,i8>> (; 16 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 19
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/map/Map<i64,i16>> (; 17 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 20
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/map/Map<i32,i32>> (; 18 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 21
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/map/Map<i16,i64>> (; 19 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 22
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/map/Map<i8,v128>> (; 20 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 23
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/map/Map<rt/flags/Ref,i8>> (; 21 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 24
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/map/Map<rt/flags/Ref | null,i8>> (; 22 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 25
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/map/Map<i8,rt/flags/Ref>> (; 23 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 26
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/map/Map<i8,rt/flags/Ref | null>> (; 24 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 27
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/map/Map<rt/flags/Ref | null,rt/flags/Ref | null>> (; 25 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 28
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<rt/flags/NoCycle> (; 26 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 29
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<rt/flags/DirectCycle> (; 27 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 30
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<rt/flags/IndirectCycle> (; 28 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 31
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<rt/flags/IndirectCycleArray> (; 29 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 33
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<rt/flags/InnerCycleArray> (; 30 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 35
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<rt/flags/IndirectCycleSet> (; 31 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 36
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<rt/flags/InnerCycleSet> (; 32 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 38
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<rt/flags/IndirectCycleMapKey> (; 33 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 39
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<rt/flags/IndirectCycleMapValue> (; 34 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 41
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<rt/flags/InnerCycleMapKey> (; 35 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 43
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<rt/flags/InnerCycleMapValue> (; 36 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 44
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start:rt/flags (; 37 ;) (type $FUNCSIG$v)
  i32.const 1
  i32.const 8
  i32.or
  i32.const 16
  i32.or
  call $rt/flags/test<~lib/array/Array<i8>>
  i32.const 1
  i32.const 8
  i32.or
  i32.const 32
  i32.or
  call $rt/flags/test<~lib/array/Array<i16>>
  i32.const 1
  i32.const 8
  i32.or
  i32.const 64
  i32.or
  call $rt/flags/test<~lib/array/Array<i32>>
  i32.const 1
  i32.const 8
  i32.or
  i32.const 128
  i32.or
  call $rt/flags/test<~lib/array/Array<i64>>
  i32.const 1
  i32.const 8
  i32.or
  i32.const 256
  i32.or
  call $rt/flags/test<~lib/array/Array<v128>>
  i32.const 1
  i32.const 8
  i32.or
  global.get $rt/flags/VALUE_ALIGN_REF
  i32.or
  i32.const 1024
  i32.or
  call $rt/flags/test<~lib/array/Array<rt/flags/Ref>>
  i32.const 1
  i32.const 8
  i32.or
  global.get $rt/flags/VALUE_ALIGN_REF
  i32.or
  i32.const 512
  i32.or
  i32.const 1024
  i32.or
  call $rt/flags/test<~lib/array/Array<rt/flags/Ref | null>>
  i32.const 2
  i32.const 8
  i32.or
  i32.const 16
  i32.or
  call $rt/flags/test<~lib/set/Set<i8>>
  i32.const 2
  i32.const 8
  i32.or
  i32.const 32
  i32.or
  call $rt/flags/test<~lib/set/Set<i16>>
  i32.const 2
  i32.const 8
  i32.or
  i32.const 64
  i32.or
  call $rt/flags/test<~lib/set/Set<i32>>
  i32.const 2
  i32.const 8
  i32.or
  i32.const 128
  i32.or
  call $rt/flags/test<~lib/set/Set<i64>>
  i32.const 2
  i32.const 8
  i32.or
  i32.const 256
  i32.or
  call $rt/flags/test<~lib/set/Set<v128>>
  i32.const 2
  i32.const 8
  i32.or
  global.get $rt/flags/VALUE_ALIGN_REF
  i32.or
  i32.const 1024
  i32.or
  call $rt/flags/test<~lib/set/Set<rt/flags/Ref>>
  i32.const 2
  i32.const 8
  i32.or
  global.get $rt/flags/VALUE_ALIGN_REF
  i32.or
  i32.const 512
  i32.or
  i32.const 1024
  i32.or
  call $rt/flags/test<~lib/set/Set<rt/flags/Ref | null>>
  i32.const 4
  i32.const 8
  i32.or
  i32.const 32768
  i32.or
  i32.const 16
  i32.or
  call $rt/flags/test<~lib/map/Map<v128,i8>>
  i32.const 4
  i32.const 8
  i32.or
  i32.const 16384
  i32.or
  i32.const 32
  i32.or
  call $rt/flags/test<~lib/map/Map<i64,i16>>
  i32.const 4
  i32.const 8
  i32.or
  i32.const 8192
  i32.or
  i32.const 64
  i32.or
  call $rt/flags/test<~lib/map/Map<i32,i32>>
  i32.const 4
  i32.const 8
  i32.or
  i32.const 4096
  i32.or
  i32.const 128
  i32.or
  call $rt/flags/test<~lib/map/Map<i16,i64>>
  i32.const 4
  i32.const 8
  i32.or
  i32.const 2048
  i32.or
  i32.const 256
  i32.or
  call $rt/flags/test<~lib/map/Map<i8,v128>>
  i32.const 4
  i32.const 8
  i32.or
  global.get $rt/flags/KEY_ALIGN_REF
  i32.or
  i32.const 131072
  i32.or
  i32.const 16
  i32.or
  call $rt/flags/test<~lib/map/Map<rt/flags/Ref,i8>>
  i32.const 4
  i32.const 8
  i32.or
  global.get $rt/flags/KEY_ALIGN_REF
  i32.or
  i32.const 65536
  i32.or
  i32.const 131072
  i32.or
  i32.const 16
  i32.or
  call $rt/flags/test<~lib/map/Map<rt/flags/Ref | null,i8>>
  i32.const 4
  i32.const 8
  i32.or
  i32.const 2048
  i32.or
  i32.const 1024
  i32.or
  global.get $rt/flags/VALUE_ALIGN_REF
  i32.or
  call $rt/flags/test<~lib/map/Map<i8,rt/flags/Ref>>
  i32.const 4
  i32.const 8
  i32.or
  i32.const 2048
  i32.or
  i32.const 512
  i32.or
  i32.const 1024
  i32.or
  global.get $rt/flags/VALUE_ALIGN_REF
  i32.or
  call $rt/flags/test<~lib/map/Map<i8,rt/flags/Ref | null>>
  i32.const 4
  i32.const 8
  i32.or
  i32.const 65536
  i32.or
  i32.const 131072
  i32.or
  global.get $rt/flags/KEY_ALIGN_REF
  i32.or
  i32.const 512
  i32.or
  i32.const 1024
  i32.or
  global.get $rt/flags/VALUE_ALIGN_REF
  i32.or
  call $rt/flags/test<~lib/map/Map<rt/flags/Ref | null,rt/flags/Ref | null>>
  i32.const 8
  call $rt/flags/test<rt/flags/NoCycle>
  i32.const 0
  call $rt/flags/test<rt/flags/DirectCycle>
  i32.const 0
  call $rt/flags/test<rt/flags/IndirectCycle>
  i32.const 0
  call $rt/flags/test<rt/flags/IndirectCycleArray>
  i32.const 8
  call $rt/flags/test<rt/flags/InnerCycleArray>
  i32.const 0
  call $rt/flags/test<rt/flags/IndirectCycleSet>
  i32.const 8
  call $rt/flags/test<rt/flags/InnerCycleSet>
  i32.const 0
  call $rt/flags/test<rt/flags/IndirectCycleMapKey>
  i32.const 0
  call $rt/flags/test<rt/flags/IndirectCycleMapValue>
  i32.const 8
  call $rt/flags/test<rt/flags/InnerCycleMapKey>
  i32.const 8
  call $rt/flags/test<rt/flags/InnerCycleMapValue>
 )
 (func $start (; 38 ;) (type $FUNCSIG$v)
  call $start:rt/flags
 )
 (func $null (; 39 ;) (type $FUNCSIG$v)
 )
)
