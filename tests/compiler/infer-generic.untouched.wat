(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_f32_i32_i32_=>_i32 (func (param i32 f32 i32 i32) (result i32)))
 (type $f32_=>_f32 (func (param f32) (result f32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $f64_f64_=>_i32 (func (param f64 f64) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 2)
 (data (i32.const 12) " \00\00\00\01\00\00\00\00\00\00\00\01\00\00\00 \00\00\00i\00n\00f\00e\00r\00-\00g\00e\00n\00e\00r\00i\00c\00.\00t\00s\00")
 (data (i32.const 76) "\0c\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\0c\00\00\00\00\00\80?\00\00\00@\00\00@@")
 (data (i32.const 108) "\10\00\00\00\01\00\00\00\00\00\00\00\03\00\00\00\10\00\00\00`\00\00\00`\00\00\00\0c\00\00\00\03\00\00\00")
 (data (i32.const 156) "\08\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\08\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 188) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00s\00t\00a\00c\00k\00 \00o\00v\00e\00r\00f\00l\00o\00w\00")
 (data (i32.const 236) "\14\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s\00")
 (table $0 2 funcref)
 (elem (i32.const 1) $start:infer-generic~anonymous|0)
 (global $infer-generic/arr i32 (i32.const 128))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/ASC_FEATURE_BULK_MEMORY i32 (i32.const 0))
 (global $~lib/rt/__stack_base i32 (i32.const 276))
 (global $~lib/rt/__stack_size i32 (i32.const 65536))
 (global $~lib/rt/__stackptr (mut i32) (i32.const 276))
 (export "memory" (memory $0))
 (export "test1" (func $infer-generic/test1))
 (export "test2" (func $infer-generic/test2))
 (export "test3" (func $infer-generic/test3))
 (export "test4" (func $infer-generic/test4))
 (start $~start)
 (func $infer-generic/inferCompatible<f64> (param $0 f64) (param $1 f64) (result i32)
  local.get $0
  local.get $1
  f64.eq
 )
 (func $~lib/rt/__stackify (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.store
  local.get $0
 )
 (func $start:infer-generic~anonymous|0 (param $0 i32) (param $1 f32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 4
  call $~lib/rt/__stack_prepare
  local.set $4
  local.get $3
  local.get $4
  i32.const 0
  i32.add
  call $~lib/rt/__stackify
  local.set $3
  local.get $0
  if (result i32)
   local.get $1
   f32.const 0
   f32.ne
  else
   i32.const 0
  end
  local.set $5
  local.get $4
  call $~lib/rt/__stack_restore
  local.get $5
 )
 (func $~lib/array/Array<f32>#reduce<bool> (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  i32.const 8
  call $~lib/rt/__stack_prepare
  local.set $8
  local.get $0
  local.get $8
  i32.const 0
  i32.add
  call $~lib/rt/__stackify
  local.set $0
  local.get $1
  local.get $8
  i32.const 4
  i32.add
  call $~lib/rt/__stackify
  local.set $1
  local.get $2
  local.set $3
  i32.const 0
  local.set $4
  local.get $0
  i32.load offset=12
  local.set $5
  loop $for-loop|0
   local.get $4
   local.get $5
   local.tee $6
   local.get $0
   i32.load offset=12
   local.tee $7
   local.get $6
   local.get $7
   i32.lt_s
   select
   i32.lt_s
   local.set $6
   local.get $6
   if
    local.get $3
    local.get $0
    i32.load offset=4
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    f32.load
    local.get $4
    local.get $0
    i32.const 4
    global.set $~argumentsLength
    local.get $1
    i32.load
    call_indirect (type $i32_f32_i32_i32_=>_i32)
    local.set $3
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  local.get $3
  local.set $9
  local.get $8
  call $~lib/rt/__stack_restore
  local.get $9
 )
 (func $start:infer-generic
  (local $0 i32)
  (local $1 i32)
  f64.const 1
  f64.const 1
  call $infer-generic/inferCompatible<f64>
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 46
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $infer-generic/arr
  i32.const 176
  i32.const 0
  call $~lib/array/Array<f32>#reduce<bool>
  drop
 )
 (func $infer-generic/inferPlain<f32> (param $0 f32) (result f32)
  local.get $0
 )
 (func $infer-generic/test1 (param $0 f32) (result f32)
  local.get $0
  call $infer-generic/inferPlain<f32>
 )
 (func $infer-generic/inferEncapsulatedClass<f32> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 4
  call $~lib/rt/__stack_prepare
  local.set $1
  local.get $0
  local.get $1
  i32.const 0
  i32.add
  call $~lib/rt/__stackify
  local.set $0
  local.get $0
  local.set $2
  local.get $1
  call $~lib/rt/__stack_restore
  local.get $2
 )
 (func $infer-generic/test2 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 4
  call $~lib/rt/__stack_prepare
  local.set $1
  local.get $0
  local.get $1
  i32.const 0
  i32.add
  call $~lib/rt/__stackify
  local.set $0
  local.get $0
  call $infer-generic/inferEncapsulatedClass<f32>
  local.set $2
  local.get $1
  call $~lib/rt/__stack_restore
  local.get $2
 )
 (func $infer-generic/inferEncapsulatedFunction<f32,f64> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 4
  call $~lib/rt/__stack_prepare
  local.set $1
  local.get $0
  local.get $1
  i32.const 0
  i32.add
  call $~lib/rt/__stackify
  local.set $0
  local.get $0
  local.set $2
  local.get $1
  call $~lib/rt/__stack_restore
  local.get $2
 )
 (func $infer-generic/test3 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 4
  call $~lib/rt/__stack_prepare
  local.set $1
  local.get $0
  local.get $1
  i32.const 0
  i32.add
  call $~lib/rt/__stackify
  local.set $0
  local.get $0
  call $infer-generic/inferEncapsulatedFunction<f32,f64>
  local.set $2
  local.get $1
  call $~lib/rt/__stack_restore
  local.get $2
 )
 (func $infer-generic/inferEncapsulatedFunctionMixed<f32,f64> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 4
  call $~lib/rt/__stack_prepare
  local.set $1
  local.get $0
  local.get $1
  i32.const 0
  i32.add
  call $~lib/rt/__stackify
  local.set $0
  local.get $0
  local.set $2
  local.get $1
  call $~lib/rt/__stack_restore
  local.get $2
 )
 (func $infer-generic/test4 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 4
  call $~lib/rt/__stack_prepare
  local.set $1
  local.get $0
  local.get $1
  i32.const 0
  i32.add
  call $~lib/rt/__stackify
  local.set $0
  local.get $0
  call $infer-generic/inferEncapsulatedFunctionMixed<f32,f64>
  local.set $2
  local.get $1
  call $~lib/rt/__stack_restore
  local.get $2
 )
 (func $~start
  call $start:infer-generic
 )
 (func $~lib/rt/__stack_prepare (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/rt/__stackptr
  local.set $1
  local.get $1
  local.get $0
  i32.add
  local.set $2
  local.get $2
  global.get $~lib/rt/__stack_base
  global.get $~lib/rt/__stack_size
  i32.add
  i32.le_u
  i32.eqz
  if
   i32.const 208
   i32.const 256
   i32.const 118
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  global.set $~lib/rt/__stackptr
  i32.const 0
  drop
  loop $while-continue|0
   local.get $2
   i32.const 4
   i32.sub
   local.tee $2
   local.get $1
   i32.ge_u
   local.set $3
   local.get $3
   if
    local.get $2
    i32.const 0
    i32.store
    br $while-continue|0
   end
  end
  local.get $1
 )
 (func $~lib/rt/__stack_restore (param $0 i32)
  local.get $0
  global.set $~lib/rt/__stackptr
 )
)
