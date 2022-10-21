(module
 (type $none_=>_externref (func_subtype (result externref) func))
 (type $none_=>_none (func_subtype func))
 (type $externref_=>_externref (func_subtype (param externref) (result externref) func))
 (type $i32_i32_i32_i32_=>_none (func_subtype (param i32 i32 i32 i32) func))
 (import "reference-types" "somethingReal" (func $features/reference-types/somethingReal (result externref)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "reference-types" "somethingNull" (func $features/reference-types/somethingNull (result externref)))
 (import "reference-types" "external" (func $features/reference-types/external (param externref) (result externref)))
 (global $features/reference-types/funcGlobal (mut funcref) (ref.null nofunc))
 (global $features/reference-types/a externref (ref.null noextern))
 (global $features/reference-types/b funcref (ref.null nofunc))
 (global $features/reference-types/nonNullFunc (mut funcref) (ref.null nofunc))
 (global $features/reference-types/nonNullReal (mut externref) (ref.null noextern))
 (memory $0 1)
 (data (i32.const 1036) "L")
 (data (i32.const 1048) "\01\00\00\006\00\00\00f\00e\00a\00t\00u\00r\00e\00s\00/\00r\00e\00f\00e\00r\00e\00n\00c\00e\00-\00t\00y\00p\00e\00s\00.\00t\00s")
 (data (i32.const 1116) "<")
 (data (i32.const 1128) "\01\00\00\00\1e\00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00n\00u\00l\00l")
 (elem declare func $features/reference-types/someFunc)
 (export "external" (func $features/reference-types/external))
 (export "somethingReal" (func $features/reference-types/somethingReal))
 (export "somethingNull" (func $features/reference-types/somethingNull))
 (export "internal" (func $features/reference-types/internal))
 (export "a" (global $features/reference-types/a))
 (export "b" (global $features/reference-types/b))
 (export "nonNullFunc" (global $features/reference-types/nonNullFunc))
 (export "nonNullReal" (global $features/reference-types/nonNullReal))
 (export "memory" (memory $0))
 (start $~start)
 (func $features/reference-types/someFunc (type $none_=>_none)
  unreachable
 )
 (func $features/reference-types/internal (type $externref_=>_externref) (param $0 externref) (result externref)
  local.get $0
  call $features/reference-types/external
  call $features/reference-types/external
  call $features/reference-types/external
 )
 (func $~start (type $none_=>_none)
  (local $0 externref)
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
  ref.null nofunc
  global.set $features/reference-types/funcGlobal
  ref.func $features/reference-types/someFunc
  global.set $features/reference-types/funcGlobal
  ref.func $features/reference-types/someFunc
  global.set $features/reference-types/nonNullFunc
  call $features/reference-types/somethingReal
  local.tee $0
  ref.is_null
  if
   i32.const 1136
   i32.const 1056
   i32.const 98
   i32.const 28
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  global.set $features/reference-types/nonNullReal
 )
)
