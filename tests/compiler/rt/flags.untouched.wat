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
 (data (i32.const 144) "D\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\001\04\00\00\02\00\00\001\00\00\00\02\00\00\001\00\00\00\02\00\00\00Q\04\00\00\02\00\00\00Q\00\00\00\02\00\00\00\91\04\00\00\02\00\00\00\91\00\00\00\02\00\00\00\11\05\00\00\02\00\00\00\11\01\00\00\02\00\00\00\91\0c\00\00\02\00\00\00\11\0d\00\00\02\00\00\003\04\00\00\02\00\00\003\00\00\00\02\00\00\00S\04\00\00\02\00\00\00S\00\00\00\02\00\00\00\93\04\00\00\02\00\00\00\93\00\00\00\02\00\00\00\13\05\00\00\02\00\00\00\13\01\00\00\02\00\00\00\93\0c\00\00\02\00\00\00\13\0d\00\00\02\00\00\00\13\02\00\00\02\00\00\00\10\00\00\00\00\00\00\00\93 \00\00\02\00\00\00\930\00\00\02\00\00\004\04\00\00\00\00\00\004\00\00\00\00\00\00\00T\04\00\00\00\00\00\00T\00\00\00\00\00\00\00\94\04\00\00\00\00\00\00\94\00\00\00\00\00\00\00\14\05\00\00\00\00\00\00\14\01\00\00\00\00\00\00\94\0c\00\00\00\00\00\00\14\0d\00\00\00\00\00\00\14\02\00\00\00\00\00\00\94 \00\00\00\00\00\00\940\00\00\00\00\00\008\04\04\00\00\00\00\00X\04\n\00\00\00\00\00\98\04\t\00\00\00\00\00\18\85\08\00\00\00\00\00\18B\08\00\00\00\00\008\04A\00\00\00\00\008\04a\00\00\00\00\00\98`\08\00\00\00\00\00\98p\08\00\00\00\00\00\980a\00\00\00\00\00\98\04\19\00\00\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\83 \00\00\02\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\84 \00\00\00\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\88\04A\00\00\00\00\00\00\00\00\00\00\00\00\00\88 \t\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $rt/flags/VALUE_ALIGN_REF i32 (i32.const 128))
 (global $rt/flags/KEY_ALIGN_REF i32 (i32.const 65536))
 (global $~lib/rt/__rtti_base i32 (i32.const 144))
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/rt/__typeinfo (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/rt/__rtti_base
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
 (func $rt/flags/test<~lib/typedarray/Int8Array> (; 2 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 3
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
 (func $rt/flags/test<~lib/typedarray/Uint8Array> (; 3 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $rt/flags/test<~lib/typedarray/Uint8ClampedArray> (; 4 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $rt/flags/test<~lib/typedarray/Int16Array> (; 5 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $rt/flags/test<~lib/typedarray/Uint16Array> (; 6 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $rt/flags/test<~lib/typedarray/Int32Array> (; 7 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $rt/flags/test<~lib/typedarray/Uint32Array> (; 8 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 9
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
 (func $rt/flags/test<~lib/typedarray/Int64Array> (; 9 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $rt/flags/test<~lib/typedarray/Uint64Array> (; 10 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $rt/flags/test<~lib/typedarray/Float32Array> (; 11 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $rt/flags/test<~lib/typedarray/Float64Array> (; 12 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $rt/flags/test<~lib/array/Array<i8>> (; 13 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $rt/flags/test<~lib/array/Array<u8>> (; 14 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $rt/flags/test<~lib/array/Array<i16>> (; 15 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $rt/flags/test<~lib/array/Array<u16>> (; 16 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $rt/flags/test<~lib/array/Array<i32>> (; 17 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $rt/flags/test<~lib/array/Array<u32>> (; 18 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $rt/flags/test<~lib/array/Array<i64>> (; 19 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $rt/flags/test<~lib/array/Array<u64>> (; 20 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $rt/flags/test<~lib/array/Array<f32>> (; 21 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $rt/flags/test<~lib/array/Array<f64>> (; 22 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $rt/flags/test<~lib/array/Array<v128>> (; 23 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $rt/flags/test<~lib/array/Array<rt/flags/Ref>> (; 24 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $rt/flags/test<~lib/array/Array<rt/flags/Ref | null>> (; 25 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $rt/flags/test<~lib/set/Set<i8>> (; 26 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $rt/flags/test<~lib/set/Set<u8>> (; 27 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $rt/flags/test<~lib/set/Set<i16>> (; 28 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $rt/flags/test<~lib/set/Set<u16>> (; 29 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $rt/flags/test<~lib/set/Set<i32>> (; 30 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 32
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
 (func $rt/flags/test<~lib/set/Set<u32>> (; 31 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $rt/flags/test<~lib/set/Set<i64>> (; 32 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 34
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
 (func $rt/flags/test<~lib/set/Set<u64>> (; 33 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $rt/flags/test<~lib/set/Set<f32>> (; 34 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $rt/flags/test<~lib/set/Set<f64>> (; 35 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 37
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
 (func $rt/flags/test<~lib/set/Set<v128>> (; 36 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $rt/flags/test<~lib/set/Set<rt/flags/Ref>> (; 37 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $rt/flags/test<~lib/set/Set<rt/flags/Ref | null>> (; 38 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 40
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
 (func $rt/flags/test<~lib/map/Map<v128,i8>> (; 39 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $rt/flags/test<~lib/map/Map<i64,i16>> (; 40 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 42
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
 (func $rt/flags/test<~lib/map/Map<i32,i32>> (; 41 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $rt/flags/test<~lib/map/Map<i16,i64>> (; 42 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $rt/flags/test<~lib/map/Map<i8,v128>> (; 43 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 45
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
 (func $rt/flags/test<~lib/map/Map<rt/flags/Ref,i8>> (; 44 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 46
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
 (func $rt/flags/test<~lib/map/Map<rt/flags/Ref | null,i8>> (; 45 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 47
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
 (func $rt/flags/test<~lib/map/Map<i8,rt/flags/Ref>> (; 46 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 48
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
 (func $rt/flags/test<~lib/map/Map<i8,rt/flags/Ref | null>> (; 47 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 49
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
 (func $rt/flags/test<~lib/map/Map<rt/flags/Ref | null,rt/flags/Ref | null>> (; 48 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 50
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
 (func $rt/flags/test<~lib/map/Map<f32,i32>> (; 49 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 51
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
 (func $rt/flags/test<rt/flags/NoCycle> (; 50 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 52
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
 (func $rt/flags/test<rt/flags/DirectCycle> (; 51 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 53
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
 (func $rt/flags/test<rt/flags/IndirectCycle> (; 52 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 54
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
 (func $rt/flags/test<rt/flags/IndirectCycleArray> (; 53 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 56
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
 (func $rt/flags/test<rt/flags/InnerCycleArray> (; 54 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 58
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
 (func $rt/flags/test<rt/flags/IndirectCycleSet> (; 55 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 59
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
 (func $rt/flags/test<rt/flags/InnerCycleSet> (; 56 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 61
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
 (func $rt/flags/test<rt/flags/IndirectCycleMapKey> (; 57 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 62
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
 (func $rt/flags/test<rt/flags/IndirectCycleMapValue> (; 58 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 64
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
 (func $rt/flags/test<rt/flags/InnerCycleMapKey> (; 59 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 66
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
 (func $rt/flags/test<rt/flags/InnerCycleMapValue> (; 60 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 67
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
 (func $start:rt/flags (; 61 ;) (type $FUNCSIG$v)
  i32.const 1
  i32.const 16
  i32.or
  i32.const 32
  i32.or
  i32.const 1024
  i32.or
  call $rt/flags/test<~lib/typedarray/Int8Array>
  i32.const 1
  i32.const 16
  i32.or
  i32.const 32
  i32.or
  call $rt/flags/test<~lib/typedarray/Uint8Array>
  i32.const 1
  i32.const 16
  i32.or
  i32.const 32
  i32.or
  call $rt/flags/test<~lib/typedarray/Uint8ClampedArray>
  i32.const 1
  i32.const 16
  i32.or
  i32.const 64
  i32.or
  i32.const 1024
  i32.or
  call $rt/flags/test<~lib/typedarray/Int16Array>
  i32.const 1
  i32.const 16
  i32.or
  i32.const 64
  i32.or
  call $rt/flags/test<~lib/typedarray/Uint16Array>
  i32.const 1
  i32.const 16
  i32.or
  i32.const 128
  i32.or
  i32.const 1024
  i32.or
  call $rt/flags/test<~lib/typedarray/Int32Array>
  i32.const 1
  i32.const 16
  i32.or
  i32.const 128
  i32.or
  call $rt/flags/test<~lib/typedarray/Uint32Array>
  i32.const 1
  i32.const 16
  i32.or
  i32.const 256
  i32.or
  i32.const 1024
  i32.or
  call $rt/flags/test<~lib/typedarray/Int64Array>
  i32.const 1
  i32.const 16
  i32.or
  i32.const 256
  i32.or
  call $rt/flags/test<~lib/typedarray/Uint64Array>
  i32.const 1
  i32.const 16
  i32.or
  i32.const 128
  i32.or
  i32.const 1024
  i32.or
  i32.const 2048
  i32.or
  call $rt/flags/test<~lib/typedarray/Float32Array>
  i32.const 1
  i32.const 16
  i32.or
  i32.const 256
  i32.or
  i32.const 1024
  i32.or
  i32.const 2048
  i32.or
  call $rt/flags/test<~lib/typedarray/Float64Array>
  i32.const 1
  i32.const 2
  i32.or
  i32.const 16
  i32.or
  i32.const 32
  i32.or
  i32.const 1024
  i32.or
  call $rt/flags/test<~lib/array/Array<i8>>
  i32.const 1
  i32.const 2
  i32.or
  i32.const 16
  i32.or
  i32.const 32
  i32.or
  call $rt/flags/test<~lib/array/Array<u8>>
  i32.const 1
  i32.const 2
  i32.or
  i32.const 16
  i32.or
  i32.const 64
  i32.or
  i32.const 1024
  i32.or
  call $rt/flags/test<~lib/array/Array<i16>>
  i32.const 1
  i32.const 2
  i32.or
  i32.const 16
  i32.or
  i32.const 64
  i32.or
  call $rt/flags/test<~lib/array/Array<u16>>
  i32.const 1
  i32.const 2
  i32.or
  i32.const 16
  i32.or
  i32.const 128
  i32.or
  i32.const 1024
  i32.or
  call $rt/flags/test<~lib/array/Array<i32>>
  i32.const 1
  i32.const 2
  i32.or
  i32.const 16
  i32.or
  i32.const 128
  i32.or
  call $rt/flags/test<~lib/array/Array<u32>>
  i32.const 1
  i32.const 2
  i32.or
  i32.const 16
  i32.or
  i32.const 256
  i32.or
  i32.const 1024
  i32.or
  call $rt/flags/test<~lib/array/Array<i64>>
  i32.const 1
  i32.const 2
  i32.or
  i32.const 16
  i32.or
  i32.const 256
  i32.or
  call $rt/flags/test<~lib/array/Array<u64>>
  i32.const 1
  i32.const 2
  i32.or
  i32.const 16
  i32.or
  i32.const 128
  i32.or
  i32.const 1024
  i32.or
  i32.const 2048
  i32.or
  call $rt/flags/test<~lib/array/Array<f32>>
  i32.const 1
  i32.const 2
  i32.or
  i32.const 16
  i32.or
  i32.const 256
  i32.or
  i32.const 1024
  i32.or
  i32.const 2048
  i32.or
  call $rt/flags/test<~lib/array/Array<f64>>
  i32.const 1
  i32.const 2
  i32.or
  i32.const 16
  i32.or
  i32.const 512
  i32.or
  call $rt/flags/test<~lib/array/Array<v128>>
  i32.const 1
  i32.const 2
  i32.or
  i32.const 16
  i32.or
  global.get $rt/flags/VALUE_ALIGN_REF
  i32.or
  i32.const 8192
  i32.or
  call $rt/flags/test<~lib/array/Array<rt/flags/Ref>>
  i32.const 1
  i32.const 2
  i32.or
  i32.const 16
  i32.or
  global.get $rt/flags/VALUE_ALIGN_REF
  i32.or
  i32.const 4096
  i32.or
  i32.const 8192
  i32.or
  call $rt/flags/test<~lib/array/Array<rt/flags/Ref | null>>
  i32.const 4
  i32.const 16
  i32.or
  i32.const 32
  i32.or
  i32.const 1024
  i32.or
  call $rt/flags/test<~lib/set/Set<i8>>
  i32.const 4
  i32.const 16
  i32.or
  i32.const 32
  i32.or
  call $rt/flags/test<~lib/set/Set<u8>>
  i32.const 4
  i32.const 16
  i32.or
  i32.const 64
  i32.or
  i32.const 1024
  i32.or
  call $rt/flags/test<~lib/set/Set<i16>>
  i32.const 4
  i32.const 16
  i32.or
  i32.const 64
  i32.or
  call $rt/flags/test<~lib/set/Set<u16>>
  i32.const 4
  i32.const 16
  i32.or
  i32.const 128
  i32.or
  i32.const 1024
  i32.or
  call $rt/flags/test<~lib/set/Set<i32>>
  i32.const 4
  i32.const 16
  i32.or
  i32.const 128
  i32.or
  call $rt/flags/test<~lib/set/Set<u32>>
  i32.const 4
  i32.const 16
  i32.or
  i32.const 256
  i32.or
  i32.const 1024
  i32.or
  call $rt/flags/test<~lib/set/Set<i64>>
  i32.const 4
  i32.const 16
  i32.or
  i32.const 256
  i32.or
  call $rt/flags/test<~lib/set/Set<u64>>
  i32.const 4
  i32.const 16
  i32.or
  i32.const 128
  i32.or
  i32.const 1024
  i32.or
  i32.const 2048
  i32.or
  call $rt/flags/test<~lib/set/Set<f32>>
  i32.const 4
  i32.const 16
  i32.or
  i32.const 256
  i32.or
  i32.const 1024
  i32.or
  i32.const 2048
  i32.or
  call $rt/flags/test<~lib/set/Set<f64>>
  i32.const 4
  i32.const 16
  i32.or
  i32.const 512
  i32.or
  call $rt/flags/test<~lib/set/Set<v128>>
  i32.const 4
  i32.const 16
  i32.or
  global.get $rt/flags/VALUE_ALIGN_REF
  i32.or
  i32.const 8192
  i32.or
  call $rt/flags/test<~lib/set/Set<rt/flags/Ref>>
  i32.const 4
  i32.const 16
  i32.or
  global.get $rt/flags/VALUE_ALIGN_REF
  i32.or
  i32.const 4096
  i32.or
  i32.const 8192
  i32.or
  call $rt/flags/test<~lib/set/Set<rt/flags/Ref | null>>
  i32.const 8
  i32.const 16
  i32.or
  i32.const 262144
  i32.or
  i32.const 32
  i32.or
  i32.const 1024
  i32.or
  call $rt/flags/test<~lib/map/Map<v128,i8>>
  i32.const 8
  i32.const 16
  i32.or
  i32.const 131072
  i32.or
  i32.const 524288
  i32.or
  i32.const 64
  i32.or
  i32.const 1024
  i32.or
  call $rt/flags/test<~lib/map/Map<i64,i16>>
  i32.const 8
  i32.const 16
  i32.or
  i32.const 65536
  i32.or
  i32.const 524288
  i32.or
  i32.const 128
  i32.or
  i32.const 1024
  i32.or
  call $rt/flags/test<~lib/map/Map<i32,i32>>
  i32.const 8
  i32.const 16
  i32.or
  i32.const 32768
  i32.or
  i32.const 524288
  i32.or
  i32.const 256
  i32.or
  i32.const 1024
  i32.or
  call $rt/flags/test<~lib/map/Map<i16,i64>>
  i32.const 8
  i32.const 16
  i32.or
  i32.const 16384
  i32.or
  i32.const 524288
  i32.or
  i32.const 512
  i32.or
  call $rt/flags/test<~lib/map/Map<i8,v128>>
  i32.const 8
  i32.const 16
  i32.or
  global.get $rt/flags/KEY_ALIGN_REF
  i32.or
  i32.const 4194304
  i32.or
  i32.const 32
  i32.or
  i32.const 1024
  i32.or
  call $rt/flags/test<~lib/map/Map<rt/flags/Ref,i8>>
  i32.const 8
  i32.const 16
  i32.or
  global.get $rt/flags/KEY_ALIGN_REF
  i32.or
  i32.const 2097152
  i32.or
  i32.const 4194304
  i32.or
  i32.const 32
  i32.or
  i32.const 1024
  i32.or
  call $rt/flags/test<~lib/map/Map<rt/flags/Ref | null,i8>>
  i32.const 8
  i32.const 16
  i32.or
  i32.const 16384
  i32.or
  i32.const 524288
  i32.or
  i32.const 8192
  i32.or
  global.get $rt/flags/VALUE_ALIGN_REF
  i32.or
  call $rt/flags/test<~lib/map/Map<i8,rt/flags/Ref>>
  i32.const 8
  i32.const 16
  i32.or
  i32.const 16384
  i32.or
  i32.const 524288
  i32.or
  i32.const 4096
  i32.or
  i32.const 8192
  i32.or
  global.get $rt/flags/VALUE_ALIGN_REF
  i32.or
  call $rt/flags/test<~lib/map/Map<i8,rt/flags/Ref | null>>
  i32.const 8
  i32.const 16
  i32.or
  i32.const 2097152
  i32.or
  i32.const 4194304
  i32.or
  global.get $rt/flags/KEY_ALIGN_REF
  i32.or
  i32.const 4096
  i32.or
  i32.const 8192
  i32.or
  global.get $rt/flags/VALUE_ALIGN_REF
  i32.or
  call $rt/flags/test<~lib/map/Map<rt/flags/Ref | null,rt/flags/Ref | null>>
  i32.const 8
  i32.const 16
  i32.or
  i32.const 65536
  i32.or
  i32.const 524288
  i32.or
  i32.const 1048576
  i32.or
  i32.const 128
  i32.or
  i32.const 1024
  i32.or
  call $rt/flags/test<~lib/map/Map<f32,i32>>
  i32.const 16
  call $rt/flags/test<rt/flags/NoCycle>
  i32.const 0
  call $rt/flags/test<rt/flags/DirectCycle>
  i32.const 0
  call $rt/flags/test<rt/flags/IndirectCycle>
  i32.const 0
  call $rt/flags/test<rt/flags/IndirectCycleArray>
  i32.const 16
  call $rt/flags/test<rt/flags/InnerCycleArray>
  i32.const 0
  call $rt/flags/test<rt/flags/IndirectCycleSet>
  i32.const 16
  call $rt/flags/test<rt/flags/InnerCycleSet>
  i32.const 0
  call $rt/flags/test<rt/flags/IndirectCycleMapKey>
  i32.const 0
  call $rt/flags/test<rt/flags/IndirectCycleMapValue>
  i32.const 16
  call $rt/flags/test<rt/flags/InnerCycleMapKey>
  i32.const 16
  call $rt/flags/test<rt/flags/InnerCycleMapValue>
 )
 (func $start (; 62 ;) (type $FUNCSIG$v)
  call $start:rt/flags
 )
 (func $null (; 63 ;) (type $FUNCSIG$v)
 )
)
