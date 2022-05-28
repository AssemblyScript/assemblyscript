(module
 (type $none_=>_none (func))
 (type $none_=>_anyref (func (result anyref)))
 (type $anyref_=>_anyref (func (param anyref) (result anyref)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "reference-types" "somethingReal" (func $features/reference-types/somethingReal (result anyref)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "reference-types" "somethingNull" (func $features/reference-types/somethingNull (result anyref)))
 (import "reference-types" "external" (func $features/reference-types/external (param anyref) (result anyref)))
 (global $features/reference-types/funcGlobal (mut funcref) (ref.null func))
 (global $features/reference-types/funcGlobalInit (mut funcref) (ref.null func))
 (global $features/reference-types/anyGlobal (mut anyref) (ref.null any))
 (global $features/reference-types/anyGlobalInit (mut anyref) (ref.null any))
 (global $features/reference-types/otherFuncGlobal (mut funcref) (ref.func $features/reference-types/someFunc))
 (global $features/reference-types/a anyref (ref.null any))
 (global $features/reference-types/b funcref (ref.null func))
 (global $~lib/memory/__data_end i32 (i32.const 92))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 16476))
 (global $~lib/memory/__heap_base i32 (i32.const 16476))
 (memory $0 1)
 (data (i32.const 12) "L\00\00\00\00\00\00\00\00\00\00\00\01\00\00\006\00\00\00f\00e\00a\00t\00u\00r\00e\00s\00/\00r\00e\00f\00e\00r\00e\00n\00c\00e\00-\00t\00y\00p\00e\00s\00.\00t\00s\00\00\00\00\00\00\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (elem declare func $features/reference-types/someFunc)
 (export "external" (func $features/reference-types/external))
 (export "somethingReal" (func $features/reference-types/somethingReal))
 (export "somethingNull" (func $features/reference-types/somethingNull))
 (export "internal" (func $features/reference-types/internal))
 (export "a" (global $features/reference-types/a))
 (export "b" (global $features/reference-types/b))
 (export "memory" (memory $0))
 (start $~start)
 (func $features/reference-types/testLocal<funcref>
  (local $0 funcref)
  (local $1 funcref)
  local.get $0
  ref.is_null
  i32.eqz
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 70
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  ref.null func
  local.set $0
  local.get $0
  ref.is_null
  i32.eqz
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 72
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  ref.null func
  local.set $1
  local.get $1
  ref.is_null
  i32.eqz
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 74
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $features/reference-types/testLocal<anyref>
  (local $0 anyref)
  (local $1 anyref)
  local.get $0
  ref.is_null
  i32.eqz
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 70
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  ref.null any
  local.set $0
  local.get $0
  ref.is_null
  i32.eqz
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 72
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  ref.null any
  local.set $1
  local.get $1
  ref.is_null
  i32.eqz
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 74
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $features/reference-types/someFunc
  nop
 )
 (func $start:features/reference-types
  (local $0 funcref)
  call $features/reference-types/somethingReal
  ref.is_null
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.eqz
   if
    i32.const 0
    i32.const 32
    i32.const 16
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
  end
  call $features/reference-types/somethingNull
  ref.is_null
  i32.eqz
  i32.eqz
  if
   nop
  else
   i32.const 0
   i32.eqz
   if
    i32.const 0
    i32.const 32
    i32.const 21
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
  end
  call $features/reference-types/somethingReal
  ref.is_null
  i32.eqz
  if
   nop
  else
   i32.const 0
   i32.eqz
   if
    i32.const 0
    i32.const 32
    i32.const 26
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
  end
  call $features/reference-types/somethingNull
  ref.is_null
  i32.eqz
  if
   i32.const 0
   i32.eqz
   if
    i32.const 0
    i32.const 32
    i32.const 29
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
  end
  global.get $features/reference-types/funcGlobal
  ref.is_null
  i32.eqz
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 55
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  ref.null func
  global.set $features/reference-types/funcGlobal
  global.get $features/reference-types/funcGlobal
  ref.is_null
  i32.eqz
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 57
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $features/reference-types/funcGlobalInit
  ref.is_null
  i32.eqz
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 59
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $features/reference-types/anyGlobal
  ref.is_null
  i32.eqz
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 62
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  ref.null any
  global.set $features/reference-types/anyGlobal
  global.get $features/reference-types/anyGlobal
  ref.is_null
  i32.eqz
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 64
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $features/reference-types/anyGlobalInit
  ref.is_null
  i32.eqz
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 66
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $features/reference-types/testLocal<funcref>
  call $features/reference-types/testLocal<anyref>
  ref.func $features/reference-types/someFunc
  global.set $features/reference-types/funcGlobal
  global.get $features/reference-types/funcGlobal
  ref.is_null
  if
   i32.const 0
   i32.const 32
   i32.const 83
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $features/reference-types/otherFuncGlobal
  ref.is_null
  if
   i32.const 0
   i32.const 32
   i32.const 85
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block
   ref.func $features/reference-types/someFunc
   local.set $0
   local.get $0
   ref.is_null
   if
    i32.const 0
    i32.const 32
    i32.const 88
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
  end
 )
 (func $features/reference-types/internal (param $0 anyref) (result anyref)
  (local $1 anyref)
  (local $2 anyref)
  (local $3 anyref)
  local.get $0
  call $features/reference-types/external
  local.set $1
  local.get $1
  call $features/reference-types/external
  local.set $2
  local.get $2
  call $features/reference-types/external
  local.set $3
  local.get $3
 )
 (func $~start
  call $start:features/reference-types
 )
)
