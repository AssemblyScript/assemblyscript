(module
 (type $0 (func (param i32 i32 i32 i32)))
 (type $1 (func (result externref)))
 (type $2 (func (param externref) (result externref)))
 (type $3 (func))
 (import "reference-types" "somethingReal" (func $features/reference-types/somethingReal (result externref)))
 (import "reference-types" "external" (func $features/reference-types/external (param externref) (result externref)))
 (import "reference-types" "somethingNull" (func $features/reference-types/somethingNull (result externref)))
 (import "env" "abort" (func $~lib/builtins/__abort_impl (param i32 i32 i32 i32)))
 (global $features/reference-types/funcGlobal (mut funcref) (ref.null nofunc))
 (global $features/reference-types/a externref (ref.null noextern))
 (global $features/reference-types/b funcref (ref.null nofunc))
 (global $features/reference-types/nonNullFunc (mut funcref) (ref.null nofunc))
 (global $features/reference-types/nonNullReal (mut externref) (ref.null noextern))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 34012))
 (memory $0 1)
 (data $0 (i32.const 1036) "L")
 (data $0.1 (i32.const 1048) "\02\00\00\006\00\00\00f\00e\00a\00t\00u\00r\00e\00s\00/\00r\00e\00f\00e\00r\00e\00n\00c\00e\00-\00t\00y\00p\00e\00s\00.\00t\00s")
 (data $1 (i32.const 1116) "|")
 (data $1.1 (i32.const 1128) "\02\00\00\00^\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00n\00u\00l\00l\00\'\00 \00(\00n\00o\00t\00 \00a\00s\00s\00i\00g\00n\00e\00d\00 \00o\00r\00 \00f\00a\00i\00l\00e\00d\00 \00c\00a\00s\00t\00)")
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
 (func $~lib/builtins/abort (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1244
  i32.lt_s
  if
   i32.const 34032
   i32.const 34080
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $~lib/builtins/__abort_impl
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~start
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
   i32.const 96
   i32.const 28
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  global.set $features/reference-types/nonNullReal
 )
 (func $features/reference-types/internal (param $0 externref) (result externref)
  local.get $0
  call $features/reference-types/external
  call $features/reference-types/external
  call $features/reference-types/external
 )
 (func $features/reference-types/someFunc
 )
)
