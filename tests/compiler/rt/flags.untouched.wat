(module
 (type $i32_=>_none (func (param i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 16) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00")
 (data (i32.const 80) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s\00")
 (data (i32.const 128) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00r\00t\00/\00f\00l\00a\00g\00s\00.\00t\00s\00")
 (data (i32.const 176) "D\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\001\04\00\00\02\00\00\001\00\00\00\02\00\00\001\00\00\00\02\00\00\00Q\04\00\00\02\00\00\00Q\00\00\00\02\00\00\00\91\04\00\00\02\00\00\00\91\00\00\00\02\00\00\00\11\05\00\00\02\00\00\00\11\01\00\00\02\00\00\00\91\0c\00\00\02\00\00\00\11\0d\00\00\02\00\00\003\04\00\00\02\00\00\003\00\00\00\02\00\00\00S\04\00\00\02\00\00\00S\00\00\00\02\00\00\00\93\04\00\00\02\00\00\00\93\00\00\00\02\00\00\00\13\05\00\00\02\00\00\00\13\01\00\00\02\00\00\00\93\0c\00\00\02\00\00\00\13\0d\00\00\02\00\00\00\13\02\00\00\02\00\00\00\10\00\00\00\00\00\00\00\93 \00\00\02\00\00\00\930\00\00\02\00\00\004\04\00\00\00\00\00\004\00\00\00\00\00\00\00T\04\00\00\00\00\00\00T\00\00\00\00\00\00\00\94\04\00\00\00\00\00\00\94\00\00\00\00\00\00\00\14\05\00\00\00\00\00\00\14\01\00\00\00\00\00\00\94\0c\00\00\00\00\00\00\14\0d\00\00\00\00\00\00\14\02\00\00\00\00\00\00\94 \00\00\00\00\00\00\940\00\00\00\00\00\008\04\04\00\00\00\00\00X\04\n\00\00\00\00\00\98\04\t\00\00\00\00\00\18\85\08\00\00\00\00\00\18B\08\00\00\00\00\008\04A\00\00\00\00\008\04a\00\00\00\00\00\98`\08\00\00\00\00\00\98p\08\00\00\00\00\00\980a\00\00\00\00\00\98\04\19\00\00\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\83 \00\00\02\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\84 \00\00\00\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\88\04A\00\00\00\00\00\00\00\00\00\00\00\00\00\88 \t\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00")
 (table $0 1 funcref)
 (global $rt/flags/VALUE_ALIGN_REF i32 (i32.const 128))
 (global $rt/flags/KEY_ALIGN_REF i32 (i32.const 65536))
 (global $~lib/rt/__rtti_base i32 (i32.const 176))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/__typeinfo (; 1 ;) (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/rt/__rtti_base
  local.set $1
  local.get $0
  local.get $1
  i32.load
  i32.gt_u
  if
   i32.const 32
   i32.const 96
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
 (func $rt/flags/test<~lib/typedarray/Int8Array> (; 2 ;) (param $0 i32)
  i32.const 3
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/typedarray/Uint8Array> (; 3 ;) (param $0 i32)
  i32.const 4
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/typedarray/Uint8ClampedArray> (; 4 ;) (param $0 i32)
  i32.const 5
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/typedarray/Int16Array> (; 5 ;) (param $0 i32)
  i32.const 6
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/typedarray/Uint16Array> (; 6 ;) (param $0 i32)
  i32.const 7
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/typedarray/Int32Array> (; 7 ;) (param $0 i32)
  i32.const 8
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/typedarray/Uint32Array> (; 8 ;) (param $0 i32)
  i32.const 9
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/typedarray/Int64Array> (; 9 ;) (param $0 i32)
  i32.const 10
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/typedarray/Uint64Array> (; 10 ;) (param $0 i32)
  i32.const 11
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/typedarray/Float32Array> (; 11 ;) (param $0 i32)
  i32.const 12
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/typedarray/Float64Array> (; 12 ;) (param $0 i32)
  i32.const 13
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/array/Array<i8>> (; 13 ;) (param $0 i32)
  i32.const 14
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/array/Array<u8>> (; 14 ;) (param $0 i32)
  i32.const 15
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/array/Array<i16>> (; 15 ;) (param $0 i32)
  i32.const 16
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/array/Array<u16>> (; 16 ;) (param $0 i32)
  i32.const 17
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/array/Array<i32>> (; 17 ;) (param $0 i32)
  i32.const 18
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/array/Array<u32>> (; 18 ;) (param $0 i32)
  i32.const 19
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/array/Array<i64>> (; 19 ;) (param $0 i32)
  i32.const 20
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/array/Array<u64>> (; 20 ;) (param $0 i32)
  i32.const 21
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/array/Array<f32>> (; 21 ;) (param $0 i32)
  i32.const 22
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/array/Array<f64>> (; 22 ;) (param $0 i32)
  i32.const 23
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/array/Array<v128>> (; 23 ;) (param $0 i32)
  i32.const 24
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/array/Array<rt/flags/Ref>> (; 24 ;) (param $0 i32)
  i32.const 26
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/array/Array<rt/flags/Ref | null>> (; 25 ;) (param $0 i32)
  i32.const 27
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/set/Set<i8>> (; 26 ;) (param $0 i32)
  i32.const 28
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/set/Set<u8>> (; 27 ;) (param $0 i32)
  i32.const 29
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/set/Set<i16>> (; 28 ;) (param $0 i32)
  i32.const 30
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/set/Set<u16>> (; 29 ;) (param $0 i32)
  i32.const 31
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/set/Set<i32>> (; 30 ;) (param $0 i32)
  i32.const 32
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/set/Set<u32>> (; 31 ;) (param $0 i32)
  i32.const 33
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/set/Set<i64>> (; 32 ;) (param $0 i32)
  i32.const 34
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/set/Set<u64>> (; 33 ;) (param $0 i32)
  i32.const 35
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/set/Set<f32>> (; 34 ;) (param $0 i32)
  i32.const 36
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/set/Set<f64>> (; 35 ;) (param $0 i32)
  i32.const 37
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/set/Set<v128>> (; 36 ;) (param $0 i32)
  i32.const 38
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/set/Set<rt/flags/Ref>> (; 37 ;) (param $0 i32)
  i32.const 39
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/set/Set<rt/flags/Ref | null>> (; 38 ;) (param $0 i32)
  i32.const 40
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/map/Map<v128,i8>> (; 39 ;) (param $0 i32)
  i32.const 41
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/map/Map<i64,i16>> (; 40 ;) (param $0 i32)
  i32.const 42
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/map/Map<i32,i32>> (; 41 ;) (param $0 i32)
  i32.const 43
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/map/Map<i16,i64>> (; 42 ;) (param $0 i32)
  i32.const 44
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/map/Map<i8,v128>> (; 43 ;) (param $0 i32)
  i32.const 45
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/map/Map<rt/flags/Ref,i8>> (; 44 ;) (param $0 i32)
  i32.const 46
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/map/Map<rt/flags/Ref | null,i8>> (; 45 ;) (param $0 i32)
  i32.const 47
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/map/Map<i8,rt/flags/Ref>> (; 46 ;) (param $0 i32)
  i32.const 48
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/map/Map<i8,rt/flags/Ref | null>> (; 47 ;) (param $0 i32)
  i32.const 49
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/map/Map<rt/flags/Ref | null,rt/flags/Ref | null>> (; 48 ;) (param $0 i32)
  i32.const 50
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<~lib/map/Map<f32,i32>> (; 49 ;) (param $0 i32)
  i32.const 51
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<rt/flags/NoCycle> (; 50 ;) (param $0 i32)
  i32.const 52
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<rt/flags/DirectCycle> (; 51 ;) (param $0 i32)
  i32.const 53
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<rt/flags/IndirectCycle> (; 52 ;) (param $0 i32)
  i32.const 54
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<rt/flags/IndirectCycleArray> (; 53 ;) (param $0 i32)
  i32.const 56
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<rt/flags/InnerCycleArray> (; 54 ;) (param $0 i32)
  i32.const 58
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<rt/flags/IndirectCycleSet> (; 55 ;) (param $0 i32)
  i32.const 59
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<rt/flags/InnerCycleSet> (; 56 ;) (param $0 i32)
  i32.const 61
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<rt/flags/IndirectCycleMapKey> (; 57 ;) (param $0 i32)
  i32.const 62
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<rt/flags/IndirectCycleMapValue> (; 58 ;) (param $0 i32)
  i32.const 64
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<rt/flags/InnerCycleMapKey> (; 59 ;) (param $0 i32)
  i32.const 66
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $rt/flags/test<rt/flags/InnerCycleMapValue> (; 60 ;) (param $0 i32)
  i32.const 67
  call $~lib/rt/__typeinfo
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 6
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start:rt/flags (; 61 ;)
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
 (func $~start (; 62 ;)
  call $start:rt/flags
 )
)
