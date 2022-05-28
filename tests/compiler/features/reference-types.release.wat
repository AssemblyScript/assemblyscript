(module
 (type $none_=>_anyref (func (result anyref)))
 (type $none_=>_none (func))
 (type $anyref_=>_anyref (func (param anyref) (result anyref)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "reference-types" "somethingReal" (func $features/reference-types/somethingReal (result anyref)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "reference-types" "somethingNull" (func $features/reference-types/somethingNull (result anyref)))
 (import "reference-types" "external" (func $features/reference-types/external (param anyref) (result anyref)))
 (global $features/reference-types/funcGlobal (mut funcref) (ref.null func))
 (global $features/reference-types/anyGlobal (mut anyref) (ref.null any))
 (global $features/reference-types/a anyref (ref.null any))
 (global $features/reference-types/b funcref (ref.null func))
 (memory $0 1)
 (data (i32.const 1036) "L")
 (data (i32.const 1048) "\01\00\00\006\00\00\00f\00e\00a\00t\00u\00r\00e\00s\00/\00r\00e\00f\00e\00r\00e\00n\00c\00e\00-\00t\00y\00p\00e\00s\00.\00t\00s")
 (elem declare func $features/reference-types/someFunc)
 (export "external" (func $features/reference-types/external))
 (export "somethingReal" (func $features/reference-types/somethingReal))
 (export "somethingNull" (func $features/reference-types/somethingNull))
 (export "internal" (func $features/reference-types/internal))
 (export "a" (global $features/reference-types/a))
 (export "b" (global $features/reference-types/b))
 (export "memory" (memory $0))
 (start $~start)
 (func $features/reference-types/someFunc
  unreachable
 )
 (func $features/reference-types/internal (param $0 anyref) (result anyref)
  local.get $0
  call $features/reference-types/external
  call $features/reference-types/external
  call $features/reference-types/external
 )
 (func $~start
  call $features/reference-types/somethingReal
  ref.is_null
  if
   i32.const 0
   i32.const 1056
   i32.const 16
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  call $features/reference-types/somethingNull
  ref.is_null
  i32.eqz
  if
   i32.const 0
   i32.const 1056
   i32.const 21
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  call $features/reference-types/somethingReal
  ref.is_null
  if
   i32.const 0
   i32.const 1056
   i32.const 26
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  call $features/reference-types/somethingNull
  ref.is_null
  i32.eqz
  if
   i32.const 0
   i32.const 1056
   i32.const 29
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $features/reference-types/funcGlobal
  ref.is_null
  i32.eqz
  if
   i32.const 0
   i32.const 1056
   i32.const 55
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  ref.null func
  global.set $features/reference-types/funcGlobal
  global.get $features/reference-types/anyGlobal
  ref.is_null
  i32.eqz
  if
   i32.const 0
   i32.const 1056
   i32.const 69
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  ref.null any
  global.set $features/reference-types/anyGlobal
  ref.func $features/reference-types/someFunc
  global.set $features/reference-types/funcGlobal
  ref.func $features/reference-types/someFunc
  global.set $features/reference-types/anyGlobal
 )
)
