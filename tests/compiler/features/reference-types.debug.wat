(module
 (type $none_=>_none (func))
 (type $none_=>_externref (func (result externref)))
 (type $externref_=>_externref (func (param externref) (result externref)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "reference-types" "somethingReal" (func $features/reference-types/somethingReal (result externref)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "reference-types" "somethingNull" (func $features/reference-types/somethingNull (result externref)))
 (import "reference-types" "external" (func $features/reference-types/external (param externref) (result externref)))
 (global $features/reference-types/funcGlobal (mut funcref) (ref.null func))
 (global $features/reference-types/funcGlobalInit (mut funcref) (ref.null func))
 (global $features/reference-types/anyGlobal (mut externref) (ref.null extern))
 (global $features/reference-types/anyGlobalInit (mut externref) (ref.null extern))
 (global $features/reference-types/otherFuncGlobal (mut funcref) (ref.func $features/reference-types/someFunc))
 (global $features/reference-types/a externref (ref.null extern))
 (global $features/reference-types/b funcref (ref.null func))
 (global $features/reference-types/nonNullFunc (mut funcref) (ref.null func))
 (global $features/reference-types/nonNullReal (mut externref) (ref.null extern))
 (global $~lib/memory/__data_end i32 (i32.const 156))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 16540))
 (global $~lib/memory/__heap_base i32 (i32.const 16540))
 (memory $0 1)
 (data (i32.const 12) "L\00\00\00\00\00\00\00\00\00\00\00\01\00\00\006\00\00\00f\00e\00a\00t\00u\00r\00e\00s\00/\00r\00e\00f\00e\00r\00e\00n\00c\00e\00-\00t\00y\00p\00e\00s\00.\00t\00s\00\00\00\00\00\00\00")
 (data (i32.const 92) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1e\00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00n\00u\00l\00l\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
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
 (func $features/reference-types/testLocal<funcref>
  (local $local funcref)
  (local $localInit funcref)
  local.get $local
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
  local.set $local
  local.get $local
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
  local.set $localInit
  local.get $localInit
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
 (func $features/reference-types/testLocal<externref>
  (local $local externref)
  (local $localInit externref)
  local.get $local
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
  ref.null extern
  local.set $local
  local.get $local
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
  ref.null extern
  local.set $localInit
  local.get $localInit
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
  (local $var$0 funcref)
  (local $var$1 externref)
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
  ref.null extern
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
  call $features/reference-types/testLocal<externref>
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
  ref.func $features/reference-types/someFunc
  local.set $var$0
  local.get $var$0
  ref.is_null
  if
   i32.const 0
   i32.const 32
   i32.const 88
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $features/reference-types/otherFuncGlobal
  local.tee $var$0
  ref.is_null
  if (result funcref)
   i32.const 112
   i32.const 32
   i32.const 97
   i32.const 28
   call $~lib/builtins/abort
   unreachable
  else
   local.get $var$0
  end
  global.set $features/reference-types/nonNullFunc
  call $features/reference-types/somethingReal
  local.tee $var$1
  ref.is_null
  if (result externref)
   i32.const 112
   i32.const 32
   i32.const 98
   i32.const 28
   call $~lib/builtins/abort
   unreachable
  else
   local.get $var$1
  end
  global.set $features/reference-types/nonNullReal
 )
 (func $features/reference-types/internal (param $a externref) (result externref)
  (local $var$1 externref)
  (local $var$2 externref)
  (local $d externref)
  local.get $a
  call $features/reference-types/external
  local.set $var$1
  local.get $var$1
  call $features/reference-types/external
  local.set $var$2
  local.get $var$2
  call $features/reference-types/external
  local.set $d
  local.get $d
 )
 (func $~start
  call $start:features/reference-types
 )
)
