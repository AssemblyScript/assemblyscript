(module
 (type $none_=>_none (func))
 (type $none_=>_externref (func (result externref)))
 (type $externref_=>_externref (func (param externref) (result externref)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
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
 (global $~lib/memory/__data_end i32 (i32.const 220))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 32988))
 (global $~lib/memory/__heap_base i32 (i32.const 32988))
 (memory $0 1)
 (data $0 (i32.const 12) "L\00\00\00\00\00\00\00\00\00\00\00\02\00\00\006\00\00\00f\00e\00a\00t\00u\00r\00e\00s\00/\00r\00e\00f\00e\00r\00e\00n\00c\00e\00-\00t\00y\00p\00e\00s\00.\00t\00s\00\00\00\00\00\00\00")
 (data $1 (i32.const 92) "|\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00^\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00n\00u\00l\00l\00\'\00 \00(\00n\00o\00t\00 \00a\00s\00s\00i\00g\00n\00e\00d\00 \00o\00r\00 \00f\00a\00i\00l\00e\00d\00 \00c\00a\00s\00t\00)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
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
 (func $features/reference-types/testLocal<ref_func|null>
  (local $local funcref)
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
 )
 (func $features/reference-types/testLocal<ref_extern|null>
  (local $local externref)
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
 )
 (func $features/reference-types/someFunc
  nop
 )
 (func $start:features/reference-types
  (local $funcLocal funcref)
  (local $1 funcref)
  (local $2 externref)
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
  call $features/reference-types/testLocal<ref_func|null>
  call $features/reference-types/testLocal<ref_extern|null>
  ref.func $features/reference-types/someFunc
  global.set $features/reference-types/funcGlobal
  global.get $features/reference-types/funcGlobal
  ref.is_null
  if
   i32.const 0
   i32.const 32
   i32.const 81
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $features/reference-types/otherFuncGlobal
  ref.is_null
  if
   i32.const 0
   i32.const 32
   i32.const 83
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
   i32.const 86
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $features/reference-types/otherFuncGlobal
  local.tee $1
  ref.is_null
  if (result funcref)
   i32.const 112
   i32.const 32
   i32.const 95
   i32.const 28
   call $~lib/builtins/abort
   unreachable
  else
   local.get $1
  end
  global.set $features/reference-types/nonNullFunc
  call $features/reference-types/somethingReal
  local.tee $2
  ref.is_null
  if (result externref)
   i32.const 112
   i32.const 32
   i32.const 96
   i32.const 28
   call $~lib/builtins/abort
   unreachable
  else
   local.get $2
  end
  global.set $features/reference-types/nonNullReal
 )
 (func $features/reference-types/internal (param $a externref) (result externref)
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
  return
 )
 (func $~start
  call $start:features/reference-types
 )
)
