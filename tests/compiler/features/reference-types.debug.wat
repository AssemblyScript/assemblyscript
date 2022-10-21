(module
 (type $none_=>_none (func_subtype func))
 (type $none_=>_externref (func_subtype (result externref) func))
 (type $externref_=>_externref (func_subtype (param externref) (result externref) func))
 (type $i32_i32_i32_i32_=>_none (func_subtype (param i32 i32 i32 i32) func))
 (import "reference-types" "somethingReal" (func $features/reference-types/somethingReal (result externref)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "reference-types" "somethingNull" (func $features/reference-types/somethingNull (result externref)))
 (import "reference-types" "external" (func $features/reference-types/external (param externref) (result externref)))
 (global $features/reference-types/funcGlobal (mut funcref) (ref.null nofunc))
 (global $features/reference-types/funcGlobalInit (mut funcref) (ref.null nofunc))
 (global $features/reference-types/anyGlobal (mut externref) (ref.null noextern))
 (global $features/reference-types/anyGlobalInit (mut externref) (ref.null noextern))
 (global $features/reference-types/otherFuncGlobal (mut funcref) (ref.func $features/reference-types/someFunc))
 (global $features/reference-types/a externref (ref.null noextern))
 (global $features/reference-types/b funcref (ref.null nofunc))
 (global $features/reference-types/nonNullFunc (mut funcref) (ref.null nofunc))
 (global $features/reference-types/nonNullReal (mut externref) (ref.null noextern))
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
 (func $features/reference-types/testLocal<funcref> (type $none_=>_none)
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
  ref.null nofunc
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
  ref.null nofunc
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
 (func $features/reference-types/testLocal<externref> (type $none_=>_none)
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
  ref.null noextern
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
  ref.null noextern
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
 (func $features/reference-types/someFunc (type $none_=>_none)
  nop
 )
 (func $start:features/reference-types (type $none_=>_none)
  (local $funcLocal funcref)
  (local $var$1 funcref)
  (local $var$2 externref)
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
  ref.null nofunc
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
  ref.null noextern
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
  local.set $funcLocal
  local.get $funcLocal
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
  local.tee $var$1
  ref.is_null
  if (result funcref)
   i32.const 112
   i32.const 32
   i32.const 97
   i32.const 28
   call $~lib/builtins/abort
   unreachable
  else
   local.get $var$1
  end
  global.set $features/reference-types/nonNullFunc
  call $features/reference-types/somethingReal
  local.tee $var$2
  ref.is_null
  if (result externref)
   i32.const 112
   i32.const 32
   i32.const 98
   i32.const 28
   call $~lib/builtins/abort
   unreachable
  else
   local.get $var$2
  end
  global.set $features/reference-types/nonNullReal
 )
 (func $features/reference-types/internal (type $externref_=>_externref) (param $a externref) (result externref)
  (local $b externref)
  (local $c externref)
  (local $d externref)
  local.get $a
  call $features/reference-types/external
  local.set $b
  local.get $b
  call $features/reference-types/external
  local.set $c
  local.get $c
  call $features/reference-types/external
  local.set $d
  local.get $d
 )
 (func $~start (type $none_=>_none)
  call $start:features/reference-types
 )
)
